function setupCardDropdownAjax(): void {
  const toggle = document.querySelector<HTMLElement>('.change-card-toggle');
  const dropdownItems = document.querySelectorAll<HTMLElement>('.change-card-dropdown-list');

  if (!toggle || dropdownItems.length === 0) return;

  // Optional: Toggle visibility
  toggle.addEventListener('click', () => {
    const dropdown = document.querySelector('.change-card-dropdown');
    dropdown?.classList.toggle('active');
  });

  // Handle item click and fire AJAX
  dropdownItems.forEach(item => {
    item.addEventListener('click', () => {
      const cardId = item.getAttribute('data-card-id');
      if (!cardId) return;

      // AJAX Call
      fetch(`/bin/my/card/data?cardId=${cardId}`, {
        method: 'GET',
        headers: {
          'Accept': 'application/json'
        }
      })
      .then(response => {
        if (!response.ok) throw new Error('Network response was not ok');
        return response.json();
      })
      .then(data => {
        console.log('Card data:', data);
        // Update UI with data if needed
      })
      .catch(error => {
        console.error('Error fetching card data:', error);
      });
    });
  });
}
