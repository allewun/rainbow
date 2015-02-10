function getLedColor($status) {
  switch (strtolower($status)) {
    case 'closed':
    case 'cancelled': return 'red';
    case 'open':      return 'green';
    case 'w-list':    return 'yellow';
    default:          return '';
  }
}

function formatPhone($str) {
  return preg_replace('/^(\d{3})(\d{3})(\d{4})(.*)$/', '($1) $2-$3', $str);
}