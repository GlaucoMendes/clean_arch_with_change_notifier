class AppUtils {
  AppUtils._();
  static String formatToSearch(String text) {
    const diacritics = 'ÀÁÂÃÄÅàáâãäåÒÓÔÕÕÖØòóôõöøÈÉÊËèéêëðÇçÐÌÍÎÏìíîïÙÚÛÜùúûüÑñŠšŸÿýŽž';
    const nonDiacritics = 'AAAAAAaaaaaaOOOOOOOooooooEEEEeeeeeCcDIIIIiiiiUUUUuuuuNnSsYyyZz';

    var formattedText = text.splitMapJoin('',
        onNonMatch: (char) =>
            char.isNotEmpty && diacritics.contains(char) ? nonDiacritics[diacritics.indexOf(char)] : char);
    return formattedText.toLowerCase();
  }
}
