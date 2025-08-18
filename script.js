document.addEventListener('DOMContentLoaded', function() {
  const marginSlider = document.getElementById('margin');
  const borderSlider = document.getElementById('border');
  const paddingSlider = document.getElementById('padding');

  const marginVisual = document.querySelector('.margin-visual');
  const boxWrapper = document.querySelector('.box-wrapper');
  const boxExample = document.querySelector('.box-model-example');

  const marginValue = document.getElementById('margin-value');
  const borderValue = document.getElementById('border-value');
  const paddingValue = document.getElementById('padding-value');

  function updateBox() {
    const margin = marginSlider.value + 'px';
    const border = borderSlider.value + 'px';
    const padding = paddingSlider.value + 'px';

    marginValue.textContent = margin;
    borderValue.textContent = border;
    paddingValue.textContent = padding;

    boxWrapper.style.margin = margin;
    marginVisual.style.padding = margin;

    boxExample.style.borderWidth = border;
    boxExample.style.padding = padding;
  }

  marginSlider.addEventListener('input', updateBox);
  borderSlider.addEventListener('input', updateBox);
  paddingSlider.addEventListener('input', updateBox);

  updateBox();
});
