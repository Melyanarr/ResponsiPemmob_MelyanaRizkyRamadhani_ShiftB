class ApiUrl {
static const String baseUrl = 'http://localhost/kesehatan/public';
static const String registrasi = baseUrl + '/registrasi';
static const String login = baseUrl + '/login';
static const String listProduk = baseUrl + '/kesehatan';
static const String createProduk = baseUrl + '/kesehatan';
static String updatevaccine_schedule(int id) {
return baseUrl + '/vaccine_schedule/' + id.toString();
}
static String showvaccine_schedule(int id) {
return baseUrl + '/vaccine_schedule/' + id.toString();
}
static String deletevaccine_schedule(int id) {
return baseUrl + '/vaccine_schedule/' + id.toString();
}
}