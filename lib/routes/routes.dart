// ignore_for_file: constant_identifier_names
const RootRoute = '/';

const OverviewPageDisplayName = 'Overview';
const OverviewPageRoute = '/overview';
const DriversPageDisplayName = 'Drivers';
const DriversPageRoute = '/drivers';
const ClientsPageDisplayName = 'Clients';
const ClientsPageRoute = '/clients';
const AuthenticationPageDisplayName = 'Sign Out';
const AuthenticationPageRoute = '/auth';

class MenuItem {
  final String? name, route;

  MenuItem(this.name, this.route);
}

List<MenuItem> sideMenuItemRoutes = [
  MenuItem(OverviewPageDisplayName, OverviewPageRoute),
  MenuItem(DriversPageDisplayName, DriversPageRoute),
  MenuItem(ClientsPageDisplayName, ClientsPageRoute),
  MenuItem(AuthenticationPageDisplayName, AuthenticationPageRoute)
];
