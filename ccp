<div class="donut-visual-container"
     data-sly-use.model="com.project.models.TierDonutModel">
    
    <div class="donut-list" data-sly-list.item="${model.tierDonuts}">
        <div class="donut-item donut-${itemList.index} ${item.style}">
            <div class="donut-image-wrapper">
                <img src="${item.tierDonutImage}" alt="${item.tierDonutName}" class="donut-image"/>

                <!-- Overlay text -->
                <div class="donut-overlay">
                    <div class="donut-name">${item.tierDonutName}</div>
                    <div class="donut-bonus">${item.bonusText}</div>
                </div>
            </div>

            <!-- Optional: show multiplier and reward value -->
            <div class="donut-meta">
                <div class="bonus-multiplier">Multiplier: ${item.bonusMultiplier}</div>
                <div class="reward-value">${item.rewardValue}</div>
                <div class="reward-detail">${item.rewardValueDetails}</div>
            </div>
        </div>
    </div>
</div>
