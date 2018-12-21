class MatchItem {
	final String tableID;
	final bool started;
	final List<User> users;
	final Position positions;
	final int scoreRed;
	final int scoreBlue;
	final Setting settings;
	final List<Goal> goals;

MatchItem({this.tableID,
this.started,
this.users,
this.positions,
this.scoreRed,
this.scoreBlue,
this.settings,
this.goals
});


factory MatchItem.fromJson(Map<String, dynamic> json){
  return MatchItem(
tableID : json['tableID'],
started : json['started'] == null ? false : true,
users : (json['users'] as List).map((i) => User.fromJson(i)).toList(),
positions : json['position'].toString().length>5 ? Position.fromJson(json['positions']):null,
scoreRed : json['scoreRed'],
scoreBlue : json['scoreBlue'],
settings : json['setting'].toString().length>5 ? Setting.fromJson(json['settings']) : null,
goals : json['goals'].toString().length>5 ? (json['goals'] as List).map((i) => Goal.fromJson(i)).toList() : null,
  );
}

}

class User {
	final String username;
	final String id;
	final bool admin;

User({this.username,
this.admin,
this.id,
});


factory User.fromJson(Map<String, dynamic> json){
  return new User(
username : json['username'],
admin : json['admin'],
id : json['id'],
  );
}
}
/*
class User {
	final String username;
	final String id;
	final bool admin;
	final String position;
	final int bet;
	final String color;

User(this.username,
this.admin,
this.id,
this.position,
this.bet,
this.color,
);


User.fromJson(Map<String, dynamic> json):
username = json['username'],
admin = json['admin'],
id = json['id'],
position = json['position'],bet = json['bet'],color = json['color'];
Map<String, dynamic> toJson() =>{
'username': username,'admin': admin,'id': id,'position': position,'bet': bet,'color': color,};

}
*/

class Position {
	final String blueDefense;
	final String blueAttack;
	final String redDefense;
	final String redAttack;

Position({this.blueDefense,
this.blueAttack,
this.redDefense,
this.redAttack,
});


factory Position.fromJson(Map<String, String> json){
  return Position(
    blueDefense : json['blueDefense'],
    blueAttack : json['blueAttack'],
    redDefense : json['redDefense'],
    redAttack : json['redAttack']
  );
}

}

class Setting {
	final bool twoOnTwo;
	final bool oneOnOne;
	final bool switchPositions;
	final bool twoOnOne;
	final bool bet;
	final bool maxGoals;
	final bool tournament;
	final bool drunk;
	final bool freeGame;
	final bool payed;
	final String maxTime;

Setting({this.twoOnTwo,
this.oneOnOne,
this.switchPositions,
this.twoOnOne,
this.bet,
this.maxGoals,
this.tournament,
this.drunk,
this.freeGame,
this.payed,
this.maxTime,
});


factory Setting.fromJson(Map<String, dynamic> json){
  return new Setting(
    twoOnTwo:json['twoOnTwo'],
    oneOnOne: json['oneOnOne']
    ,switchPositions : json['switchPositions']
    ,twoOnOne : json['twoOnOne']
    ,bet : json['bet']
    ,maxGoals : json['maxGoals']
    ,tournament : json['tournament']
    ,drunk : json['drunk']
    ,freeGame : json['freeGame']
    ,payed : json['payed']
    ,maxTime : json['maxTime']
  );
}
Map<String, dynamic> toJson() =>{
'twoOnTwo': twoOnTwo,'oneOnOne': oneOnOne,'switchPositions': switchPositions,'twoOnOne': twoOnOne,'bet': bet,'maxGoals': maxGoals,'tournament': tournament,'drunk': drunk,'freeGame': freeGame,'payed': payed,'maxTime': maxTime,};

}


class Goal {
	final int speed;
	final String position;
	final String side;

Goal({this.speed,
this.position,
this.side,
});


factory Goal.fromJson(Map<String, dynamic> json){
  return Goal(position: json['position'],side:json['side'],speed:json['speed']);
}

}





/*
class MatchItem {
  final String matchID;
  final bool started;
  final List<User> users;
  final String Visitors;
  final int score_red;
  final int score_blue;

  MatchItem(this.matchID, this.started,this.users,this.Visitors,this.score_red,this.score_blue);

  MatchItem.fromJson(Map<String, dynamic> json)
      : matchID = json['matchID'],
         started = json['started'],
         users = json['users'] == null ? null :(json['users'] as List).map((i) => User.fromJson(i)).toList(),
         Visitors = json['Visitors'],
         score_red = json['score_red'],
         score_blue = json['score_blue'];

  Map<String, dynamic> toJson() =>
    {
      'matchID': matchID,
      'started': started,
      'users': users,
      'Visitors': Visitors,
      'score_red': score_red,
      'score_blue': score_blue,
    };
}

class User {
  final String id;
  final String username;
  final bool admin;
  final bool visitor;


  User(this.id, this.username,this.admin,this.visitor);

  User.fromJson(Map<String, dynamic> json)
      : id = json['id'],
         username = json['username'],
         admin = json['admin'],
         visitor = json['visitor'];

  Map<String, dynamic> toJson() =>
    {
      'id': id,
      'username': username,
      'admin': admin,
      'visitor': visitor,
    };
}

*/