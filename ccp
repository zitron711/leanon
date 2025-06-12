export default function cardCalculator({ component }: { component: HTMLElement }): void {
  const calculator = new CardCalculator(component);
  calculator.init();
}

class CardCalculator {
  private component: HTMLElement;
  private inputs: NodeListOf<HTMLInputElement>;
  private resultFields: NodeListOf<HTMLElement>;
  private totalField: HTMLElement | null;

  constructor(component: HTMLElement) {
    this.component = component;
    this.inputs = component.querySelectorAll<HTMLInputElement>('.monthly-spend');
    this.resultFields = component.querySelectorAll<HTMLElement>('.cashback');
    this.totalField = component.querySelector('.cashback-total');
  }

  public init(): void {
    this.moveToModal();
    this.setupDropdowns();
    this.setupInputs();
    this.updateCashbacks();
  }

  private moveToModal(): void {
    const modalBody = document.querySelector('#calculator-modal .modal-body');
    const isAuthorMode = this.component.getAttribute('data-author-mode') === 'true';
    if (isAuthorMode && modalBody) {
      modalBody.appendChild(this.component);
    }
  }

  private setupInputs(): void {
    this.inputs.forEach((input) => {
      const wrapper = input.closest('.input-wrapper') as HTMLElement;
      const symbol = wrapper?.querySelector('.currency-symbol') as HTMLElement;

      const toggleSymbol = () => {
        if (input.value.trim() !== '') {
          symbol.style.display = 'block';
        } else {
          symbol.style.display = 'none';
        }
      };

      toggleSymbol();
      input.addEventListener('input', () => {
        toggleSymbol();
        this.updateCashbacks();
      });
    });
  }

  private setupDropdowns(): void {
    const toggle = document.querySelector('.change-card-toggle') as HTMLElement;
    const dropdown = document.querySelector('.change-card-dropdown') as HTMLElement;
    const dropdownItems = dropdown?.querySelectorAll('.change-card-dropdown-list') ?? [];

    toggle?.addEventListener('click', () => {
      dropdown.classList.toggle('active');
    });

    dropdownItems.forEach((item) => {
      item.addEventListener('click', () => {
        const title = item.querySelector('.change-card-dropdown-title')?.textContent?.trim();
        if (title) {
          toggle.textContent = title;
          dropdownItems.forEach((el) => el.classList.remove('selected'));
          item.classList.add('selected');
        }
        dropdown.classList.remove('active');
        this.redBox();
      });
    });

    document.addEventListener('click', (e) => {
      if (!toggle.contains(e.target as Node) && !dropdown.contains(e.target as Node)) {
        dropdown.classList.remove('active');
      }
    });
  }

  private updateCashbacks(): void {
    let total = 0;

    this.inputs.forEach((input, index) => {
      const value = parseFloat(input.value);
      const calculation = parseFloat(input.dataset.calculation || '0');
      const resultField = this.resultFields[index];

      if (!isNaN(value)) {
        const reward = value * calculation;
        resultField.textContent = `$${Math.round(reward)}`;
        total += reward;
      } else {
        resultField.textContent = 'N/A';
      }
    });

    if (this.totalField) {
      this.totalField.textContent = total > 0 ? `$${Math.round(total)}` : 'N/A';
    }

    this.updateDonutRewards(total);
  }

  private updateDonutRewards(totalValue: number): void {
    const donutItems = document.querySelectorAll<HTMLElement>('.donut-item');

    donutItems.forEach((donut) => {
      const bonus = parseFloat(donut.getAttribute('data-bonus') || '0');
      const tier = donut.getAttribute('data-tier')?.replace(/\s+/g, '') ?? '';
      const rewardId = `donut-reward-${tier}`;
      const rewardEl = document.getElementById(rewardId);

      if (!isNaN(bonus) && rewardEl) {
        const reward = totalValue * (bonus / 100);
        rewardEl.textContent = `$${Math.round(reward)}`;
      }
    });

    this.redBox();
  }

  private redBox(): void {
    const selectedTier = (document.querySelector('.custom-dropdown-toggle') as HTMLElement)?.textContent?.trim() ?? '';
    const box = document.querySelector(`.donut-${selectedTier}`);
    if (box) {
      box.classList.add('selected-redbox');
    }
  }

  private resetFields(): void {
    this.inputs.forEach((input) => {
      input.value = input.defaultValue;
    });
    this.updateCashbacks();
  }
}
