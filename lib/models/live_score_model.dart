class LiveScoreDetails {
  LiveScoreDetails({
    required this.success,
    required this.result,
  });
  late final int success;
  late final List<Result> result;

  LiveScoreDetails.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    result = List.from(json['result']).map((e) => Result.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['success'] = success;
    _data['result'] = result.map((e) => e.toJson()).toList();
    return _data;
  }
}

class Result {
  Result({
    required this.eventKey,
    required this.eventDate,
    required this.eventTime,
    required this.eventHomeTeam,
    required this.homeTeamKey,
    required this.eventAwayTeam,
    required this.awayTeamKey,
    required this.eventHalftimeResult,
    required this.eventFinalResult,
    required this.eventFtResult,
    required this.eventPenaltyResult,
    required this.eventStatus,
    required this.countryName,
    required this.leagueName,
    required this.leagueKey,
    required this.leagueRound,
    required this.leagueSeason,
    required this.eventLive,
    required this.eventStadium,
    required this.eventReferee,
    required this.homeTeamLogo,
    required this.awayTeamLogo,
    required this.eventCountryKey,
    this.leagueLogo,
    required this.countryLogo,
    required this.eventHomeFormation,
    required this.eventAwayFormation,
    required this.fkStageKey,
    required this.stageName,
    this.leagueGroup,
    required this.goalscorers,
    required this.substitutes,
    required this.cards,
    required this.lineups,
    required this.statistics,
  });
  late final int eventKey;
  late final String eventDate;
  late final String eventTime;
  late final String eventHomeTeam;
  late final int homeTeamKey;
  late final String eventAwayTeam;
  late final int awayTeamKey;
  late final String eventHalftimeResult;
  late final String eventFinalResult;
  late final String eventFtResult;
  late final String eventPenaltyResult;
  late final String eventStatus;
  late final String countryName;
  late final String leagueName;
  late final int leagueKey;
  late final String leagueRound;
  late final String leagueSeason;
  late final String eventLive;
  late final String eventStadium;
  late final String eventReferee;
  late final String homeTeamLogo;
  late final String awayTeamLogo;
  late final int eventCountryKey;
  late final String? leagueLogo;
  late final String countryLogo;
  late final String eventHomeFormation;
  late final String eventAwayFormation;
  late final int fkStageKey;
  late final String stageName;
  late final Null leagueGroup;
  late final List<Goalscorers> goalscorers;
  late final List<Substitutes> substitutes;
  late final List<Cards> cards;
  late final Lineups lineups;
  late final List<Statistics> statistics;

  Result.fromJson(Map<String, dynamic> json) {
    eventKey = json['event_key'];
    eventDate = json['event_date'];
    eventTime = json['event_time'];
    eventHomeTeam = json['event_home_team'];
    homeTeamKey = json['home_team_key'];
    eventAwayTeam = json['event_away_team'];
    awayTeamKey = json['away_team_key'];
    eventHalftimeResult = json['event_halftime_result'];
    eventFinalResult = json['event_final_result'];
    eventFtResult = json['event_ft_result'];
    eventPenaltyResult = json['event_penalty_result'];
    eventStatus = json['event_status'];
    countryName = json['country_name'];
    leagueName = json['league_name'];
    leagueKey = json['league_key'];
    leagueRound = json['league_round'];
    leagueSeason = json['league_season'];
    eventLive = json['event_live'];
    eventStadium = json['event_stadium'];
    eventReferee = json['event_referee'];
    homeTeamLogo = json['home_team_logo'];
    awayTeamLogo = json['away_team_logo'];
    eventCountryKey = json['event_country_key'];
    leagueLogo = null;
    countryLogo = json['country_logo'];
    eventHomeFormation = json['event_home_formation'];
    eventAwayFormation = json['event_away_formation'];
    fkStageKey = json['fk_stage_key'];
    stageName = json['stage_name'];
    leagueGroup = null;
    goalscorers = List.from(json['goalscorers'])
        .map((e) => Goalscorers.fromJson(e))
        .toList();
    substitutes = List.from(json['substitutes'])
        .map((e) => Substitutes.fromJson(e))
        .toList();
    cards = List.from(json['cards']).map((e) => Cards.fromJson(e)).toList();
    lineups = Lineups.fromJson(json['lineups']);
    statistics = List.from(json['statistics'])
        .map((e) => Statistics.fromJson(e))
        .toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['event_key'] = eventKey;
    _data['event_date'] = eventDate;
    _data['event_time'] = eventTime;
    _data['event_home_team'] = eventHomeTeam;
    _data['home_team_key'] = homeTeamKey;
    _data['event_away_team'] = eventAwayTeam;
    _data['away_team_key'] = awayTeamKey;
    _data['event_halftime_result'] = eventHalftimeResult;
    _data['event_final_result'] = eventFinalResult;
    _data['event_ft_result'] = eventFtResult;
    _data['event_penalty_result'] = eventPenaltyResult;
    _data['event_status'] = eventStatus;
    _data['country_name'] = countryName;
    _data['league_name'] = leagueName;
    _data['league_key'] = leagueKey;
    _data['league_round'] = leagueRound;
    _data['league_season'] = leagueSeason;
    _data['event_live'] = eventLive;
    _data['event_stadium'] = eventStadium;
    _data['event_referee'] = eventReferee;
    _data['home_team_logo'] = homeTeamLogo;
    _data['away_team_logo'] = awayTeamLogo;
    _data['event_country_key'] = eventCountryKey;
    _data['league_logo'] = leagueLogo;
    _data['country_logo'] = countryLogo;
    _data['event_home_formation'] = eventHomeFormation;
    _data['event_away_formation'] = eventAwayFormation;
    _data['fk_stage_key'] = fkStageKey;
    _data['stage_name'] = stageName;
    _data['league_group'] = leagueGroup;
    _data['goalscorers'] = goalscorers.map((e) => e.toJson()).toList();
    _data['substitutes'] = substitutes.map((e) => e.toJson()).toList();
    _data['cards'] = cards.map((e) => e.toJson()).toList();
    _data['lineups'] = lineups.toJson();
    _data['statistics'] = statistics.map((e) => e.toJson()).toList();
    return _data;
  }
}

class Goalscorers {
  Goalscorers({
    required this.time,
    required this.homeScorer,
    required this.homeScorerId,
    required this.homeAssist,
    required this.homeAssistId,
    required this.score,
    required this.awayScorer,
    required this.awayScorerId,
    required this.awayAssist,
    required this.awayAssistId,
    required this.info,
    required this.infoTime,
  });
  late final String time;
  late final String homeScorer;
  late final String homeScorerId;
  late final String homeAssist;
  late final String homeAssistId;
  late final String score;
  late final String awayScorer;
  late final String awayScorerId;
  late final String awayAssist;
  late final String awayAssistId;
  late final String info;
  late final String infoTime;

  Goalscorers.fromJson(Map<String, dynamic> json) {
    time = json['time'];
    homeScorer = json['home_scorer'];
    homeScorerId = json['home_scorer_id'];
    homeAssist = json['home_assist'];
    homeAssistId = json['home_assist_id'];
    score = json['score'];
    awayScorer = json['away_scorer'];
    awayScorerId = json['away_scorer_id'];
    awayAssist = json['away_assist'];
    awayAssistId = json['away_assist_id'];
    info = json['info'];
    infoTime = json['info_time'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['time'] = time;
    _data['home_scorer'] = homeScorer;
    _data['home_scorer_id'] = homeScorerId;
    _data['home_assist'] = homeAssist;
    _data['home_assist_id'] = homeAssistId;
    _data['score'] = score;
    _data['away_scorer'] = awayScorer;
    _data['away_scorer_id'] = awayScorerId;
    _data['away_assist'] = awayAssist;
    _data['away_assist_id'] = awayAssistId;
    _data['info'] = info;
    _data['info_time'] = infoTime;
    return _data;
  }
}

class Substitutes {
  Substitutes({
    required this.time,
    required this.homeScorer,
    required this.homeAssist,
    required this.score,
    required this.awayScorer,
    required this.awayAssist,
    required this.info,
    required this.infoTime,
  });
  late final String time;
  late final HomeScorer homeScorer;
  late final String homeAssist;
  late final String score;
  late final AwayScorer awayScorer;
  late final String awayAssist;
  late final String info;
  late final String infoTime;

  Substitutes.fromJson(Map<String, dynamic> json) {
    time = json['time'];
    //  homeScorer = HomeScorer.fromJson(json['home_scorer']);
    homeAssist = json['home_assist'];
    score = json['score'];
    //  awayScorer = AwayScorer.fromJson(json['away_scorer']);
    awayAssist = json['away_assist'];
    info = json['info'];
    infoTime = json['info_time'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['time'] = time;
    _data['home_scorer'] = homeScorer.toJson();
    _data['home_assist'] = homeAssist;
    _data['score'] = score;
    _data['away_scorer'] = awayScorer;
    _data['away_assist'] = awayAssist;
    _data['info'] = info;
    _data['info_time'] = infoTime;
    return _data;
  }
}

class HomeScorer {
  HomeScorer({
    required this.inn,
    required this.out,
    required this.inId,
    required this.outId,
  });
  late final String inn;
  late final String out;
  late final int inId;
  late final int outId;

  HomeScorer.fromJson(Map<String, dynamic> json) {
    inn = json['in'];
    out = json['out'];
    inId = json['in_id'];
    outId = json['out_id'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['in'] = inn;
    _data['out'] = out;
    _data['in_id'] = inId;
    _data['out_id'] = outId;
    return _data;
  }
}

class AwayScorer {
  AwayScorer({
    required this.inn,
    required this.out,
    required this.inId,
    required this.outId,
  });
  late final String inn;
  late final String out;
  late final int inId;
  late final int outId;

  AwayScorer.fromJson(Map<String, dynamic> json) {
    inn = json['in'];
    out = json['out'];
    inId = json['in_id'];
    outId = json['out_id'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['in'] = inn;
    _data['out'] = out;
    _data['in_id'] = inId;
    _data['out_id'] = outId;
    return _data;
  }
}

class Cards {
  Cards({
    required this.time,
    required this.homeFault,
    required this.card,
    required this.awayFault,
    required this.info,
    required this.homePlayerId,
    required this.awayPlayerId,
    required this.infoTime,
  });
  late final String time;
  late final String homeFault;
  late final String card;
  late final String awayFault;
  late final String info;
  late final String homePlayerId;
  late final String awayPlayerId;
  late final String infoTime;

  Cards.fromJson(Map<String, dynamic> json) {
    time = json['time'];
    homeFault = json['home_fault'];
    card = json['card'];
    awayFault = json['away_fault'];
    info = json['info'];
    homePlayerId = json['home_player_id'];
    awayPlayerId = json['away_player_id'];
    infoTime = json['info_time'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['time'] = time;
    _data['home_fault'] = homeFault;
    _data['card'] = card;
    _data['away_fault'] = awayFault;
    _data['info'] = info;
    _data['home_player_id'] = homePlayerId;
    _data['away_player_id'] = awayPlayerId;
    _data['info_time'] = infoTime;
    return _data;
  }
}

class Lineups {
  Lineups({
    required this.homeTeam,
    required this.awayTeam,
  });
  late final HomeTeam homeTeam;
  late final AwayTeam awayTeam;

  Lineups.fromJson(Map<String, dynamic> json) {
    homeTeam = HomeTeam.fromJson(json['home_team']);
    awayTeam = AwayTeam.fromJson(json['away_team']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['home_team'] = homeTeam.toJson();
    _data['away_team'] = awayTeam.toJson();
    return _data;
  }
}

class HomeTeam {
  HomeTeam({
    required this.startingLineups,
    required this.substitutes,
    required this.coaches,
    required this.missingPlayers,
  });
  late final List<StartingLineups> startingLineups;
  late final List<Substitutes> substitutes;
  late final List<Coaches> coaches;
  late final List<dynamic> missingPlayers;

  HomeTeam.fromJson(Map<String, dynamic> json) {
    startingLineups = List.from(json['starting_lineups'])
        .map((e) => StartingLineups.fromJson(e))
        .toList();
    substitutes = List.from(json['substitutes'])
        .map((e) => Substitutes.fromJson(e))
        .toList();
    coaches =
        List.from(json['coaches']).map((e) => Coaches.fromJson(e)).toList();
    missingPlayers = List.castFrom<dynamic, dynamic>(json['missing_players']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['starting_lineups'] = startingLineups.map((e) => e.toJson()).toList();
    _data['substitutes'] = substitutes.map((e) => e.toJson()).toList();
    _data['coaches'] = coaches.map((e) => e.toJson()).toList();
    _data['missing_players'] = missingPlayers;
    return _data;
  }
}

class StartingLineups {
  StartingLineups({
    required this.player,
    required this.playerNumber,
    required this.playerPosition,
    this.playerCountry,
    required this.playerKey,
    required this.infoTime,
  });
  late final String player;
  late final int playerNumber;
  late final int playerPosition;
  late final Null playerCountry;
  late final int playerKey;
  late final String infoTime;

  StartingLineups.fromJson(Map<String, dynamic> json) {
    player = json['player'];
    playerNumber = json['player_number'];
    playerPosition = json['player_position'];
    playerCountry = null;
    playerKey = json['player_key'];
    infoTime = json['info_time'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['player'] = player;
    _data['player_number'] = playerNumber;
    _data['player_position'] = playerPosition;
    _data['player_country'] = playerCountry;
    _data['player_key'] = playerKey;
    _data['info_time'] = infoTime;
    return _data;
  }
}

class Coaches {
  Coaches({
    required this.coache,
    this.coacheCountry,
  });
  late final String coache;
  late final Null coacheCountry;

  Coaches.fromJson(Map<String, dynamic> json) {
    coache = json['coache'];
    coacheCountry = null;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['coache'] = coache;
    _data['coache_country'] = coacheCountry;
    return _data;
  }
}

class AwayTeam {
  AwayTeam({
    required this.startingLineups,
    required this.substitutes,
    required this.coaches,
    required this.missingPlayers,
  });
  late final List<StartingLineups> startingLineups;
  late final List<Substitutes> substitutes;
  late final List<Coaches> coaches;
  late final List<dynamic> missingPlayers;

  AwayTeam.fromJson(Map<String, dynamic> json) {
    startingLineups = List.from(json['starting_lineups'])
        .map((e) => StartingLineups.fromJson(e))
        .toList();
    substitutes = List.from(json['substitutes'])
        .map((e) => Substitutes.fromJson(e))
        .toList();
    coaches =
        List.from(json['coaches']).map((e) => Coaches.fromJson(e)).toList();
    missingPlayers = List.castFrom<dynamic, dynamic>(json['missing_players']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['starting_lineups'] = startingLineups.map((e) => e.toJson()).toList();
    _data['substitutes'] = substitutes.map((e) => e.toJson()).toList();
    _data['coaches'] = coaches.map((e) => e.toJson()).toList();
    _data['missing_players'] = missingPlayers;
    return _data;
  }
}

class Statistics {
  Statistics({
    required this.type,
    required this.home,
    required this.away,
  });
  late final String type;
  late final String home;
  late final String away;

  Statistics.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    home = json['home'];
    away = json['away'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['type'] = type;
    _data['home'] = home;
    _data['away'] = away;
    return _data;
  }
}
