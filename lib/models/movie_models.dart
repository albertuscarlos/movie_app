class MovieModels {
  String title;
  String releaseDate;
  String backdropPath;
  String posterPath;
  String overview;
  double popularity;
  int voteCount;
  List<ActorModels> actors;
  double voteAverage;

  MovieModels({
    required this.title,
    required this.releaseDate,
    required this.backdropPath,
    required this.posterPath,
    required this.overview,
    required this.popularity,
    required this.voteCount,
    required this.actors,
    required this.voteAverage,
  });
}

class ActorModels {
  String name;
  String profilePath;
  String character;

  ActorModels({
    required this.name,
    required this.profilePath,
    required this.character,
  });
}

String imgUrl = 'https://image.tmdb.org/t/p/w500/';

List<MovieModels> upcomingMovies = [
  MovieModels(
    title: "Land of Bad",
    releaseDate: "2024-01-25",
    posterPath:
        'https://image.tmdb.org/t/p/w500/h3jYanWMEJq6JJsCopy1h7cT2Hs.jpg',
    overview:
        'When a Delta Force special ops mission goes terribly wrong, Air Force drone pilot Reaper has 48 hours to remedy what has devolved into a wild rescue operation. With no weapons and no communication other than the drone above, the ground mission suddenly becomes a full-scale battle when the team is discovered by the enemy.',
    backdropPath: '${imgUrl}oBIQDKcqNxKckjugtmzpIIOgoc4.jpg',
    popularity: 1301.124,
    voteCount: 244,
    actors: [
      ActorModels(
        name: 'Liam Hemsworth',
        profilePath: '${imgUrl}7UIm9RoBnlqS1uLlbElAY8urdWD.jpg',
        character: 'Kinney',
      ),
      ActorModels(
        name: 'Russell Crowe',
        profilePath: '${imgUrl}fbzD4utSGJlsV8XbYMLoMdEZ1Fc.jpg',
        character: 'Reaper',
      ),
      ActorModels(
        name: 'Luke Hemsworth',
        profilePath: '${imgUrl}pOZJ0SKSQU5Dzo6EiULG1oGJdu6.jpg',
        character: 'Abel',
      ),
      ActorModels(
        name: 'Ricky Whittle',
        profilePath: '${imgUrl}cjeDbVfBp6Qvb3C74Dfy7BKDTQN.jpg',
        character: 'Bishop',
      ),
      ActorModels(
        name: 'Milo Ventimiglia',
        profilePath: '${imgUrl}9yFPsQCYi9sbPQ0xJGtoAF4Ar6v.jpg',
        character: 'Sugar',
      ),
    ],
    voteAverage: 7.207,
  ),
  MovieModels(
    title: "No Way Up",
    releaseDate: "2024-01-18",
    posterPath:
        'https://image.tmdb.org/t/p/w500/9YTdswepVeqnZYo2Mkdn3mKNraF.jpg',
    overview:
        "Characters from different backgrounds are thrown together when the plane they're travelling on crashes into the Pacific Ocean. A nightmare fight for survival ensues with the air supply running out and dangers creeping in from all sides.",
    backdropPath: '${imgUrl}4woSOUD0equAYzvwhWBHIJDCM88.jpg',
    popularity: 2105.449,
    voteCount: 88,
    actors: [
      ActorModels(
        name: 'Sophie McIntosh',
        profilePath: '${imgUrl}A1yhe60nSCzLS0wuy7MwgcL4uIl.jpg',
        character: 'Ava',
      ),
      ActorModels(
        name: 'Will Attenborough',
        profilePath: '${imgUrl}tdpyPcvWgb2CHkIzaWiFJEochQw.jpg',
        character: 'Kyle',
      ),
      ActorModels(
        name: 'Jeremias Amoore',
        profilePath: '${imgUrl}9oVruNlAldrfOXKJR6ln34sy534.jpg',
        character: 'Jed',
      ),
      ActorModels(
        name: 'Manuel Pacific',
        profilePath: '${imgUrl}jkVERjEbXPleUMvLTRc25NGTLnC.jpg',
        character: 'Brandon',
      ),
      ActorModels(
        name: 'Phyllis Logan',
        profilePath: '${imgUrl}jRNfzD3bA5fyPxXRTiDbfNsTcOV.jpg',
        character: 'Mardy',
      ),
    ],
    voteAverage: 5.839,
  ),
  MovieModels(
    title: "Anyone But You",
    releaseDate: "2023-12-21",
    posterPath:
        'https://image.tmdb.org/t/p/w500/yRt7MGBElkLQOYRvLTT1b3B1rcp.jpg',
    overview:
        'After an amazing first date, Bea and Ben’s fiery attraction turns ice cold — until they find themselves unexpectedly reunited at a destination wedding in Australia. So they do what any two mature adults would do: pretend to be a couple.',
    backdropPath: '${imgUrl}nTPFkLUARmo1bYHfkfdNpRKgEOs.jpg',
    popularity: 990.409,
    voteCount: 735,
    actors: [
      ActorModels(
        name: 'Sydney Sweeney',
        profilePath: '${imgUrl}qYiaSl0Eb7G3VaxOg8PxExCFwon.jpg',
        character: 'Bea',
      ),
      ActorModels(
        name: 'Glen Powell',
        profilePath: '${imgUrl}lRbbndkwOXyvep9Y7kHiwbh9Ji5.jpg',
        character: 'Ben',
      ),
      ActorModels(
        name: 'Alexandra Shipp',
        profilePath: '${imgUrl}4GOxIqnQXK5iGINdFDBlIQYa519.jpg',
        character: 'Claudia',
      ),
      ActorModels(
        name: 'Michelle Hurd',
        profilePath: '${imgUrl}cdFf791CMSWvCNH1wksf32oPT2e.jpg',
        character: 'Carol',
      ),
      ActorModels(
        name: 'Bryan Brown',
        profilePath: '${imgUrl}x0NqVqpJSET0oVdJxbbwwd7hrFA.jpg',
        character: 'Roger',
      ),
    ],
    voteAverage: 6.967,
  ),
  MovieModels(
    title: "Migration",
    releaseDate: "2023-12-06",
    posterPath:
        'https://image.tmdb.org/t/p/w500/ldfCF9RhR40mppkzmftxapaHeTo.jpg',
    overview:
        'After a migrating duck family alights on their pond with thrilling tales of far-flung places, the Mallard family embarks on a family road trip, from New England, to New York City, to tropical Jamaica.',
    backdropPath: '${imgUrl}meyhnvssZOPPjud4F1CjOb4snET.jpg',
    popularity: 912.71,
    voteCount: 813,
    actors: [
      ActorModels(
        name: 'Kumail Nanjiani',
        profilePath: '${imgUrl}9EyrK1Cv7ey1h1GgmsVAOn45w6G.jpg',
        character: 'Mack Mallard',
      ),
      ActorModels(
        name: 'Elizabeth Banks',
        profilePath: '${imgUrl}zrkI1dYucpTM8Qydtrtro9MgQPb.jpg',
        character: 'Pam Mallard',
      ),
      ActorModels(
        name: 'Caspar Jennings',
        profilePath: '${imgUrl}rf9tblH0sUOSWwWc8UDXCMmQWNV.jpg',
        character: 'Dax Mallard',
      ),
      ActorModels(
        name: 'Awkwafina',
        profilePath: '${imgUrl}l5AKkg3H1QhMuXmTTmq1EyjyiRb.jpg',
        character: 'Chump',
      ),
      ActorModels(
        name: 'Carol Kane',
        profilePath: '${imgUrl}4ZPnxUFgUHND5fv6MshT3YRDLmq.jpg',
        character: 'Erin',
      ),
    ],
    voteAverage: 7.615,
  ),
  MovieModels(
    title: "Miller's Girl",
    releaseDate: "2024-01-18",
    posterPath:
        'https://image.tmdb.org/t/p/w500/wKCKKur7LyGFaUHmNhvy7FhIjmC.jpg',
    overview:
        'A precocious young writer becomes involved with her high school creative writing teacher in a dark coming-of-age drama that examines the blurred lines of emotional connectivity between professor and protégé.',
    backdropPath: '${imgUrl}1QuloKG6VhFB94BhjX7VknKsNmZ.jpg',
    popularity: 375.015,
    voteCount: 152,
    actors: [
      ActorModels(
        name: 'Martin Freeman',
        profilePath: '${imgUrl}vhs7quOGDG2mtFHvL7Lu7rU2dED.jpg',
        character: 'Jonathan Miller',
      ),
      ActorModels(
        name: 'Jenna Ortega',
        profilePath: '${imgUrl}q1NRzyZQlYkxLY07GO9NVPkQnu8.jpg',
        character: 'Cairo Sweet',
      ),
      ActorModels(
        name: 'Bashir Salahuddin',
        profilePath: '${imgUrl}ZL5MRzjd6kWkvQXqh5mgPY1CKP.jpg',
        character: 'Boris Fillmore',
      ),
      ActorModels(
        name: 'Gideon Adlon',
        profilePath: '${imgUrl}l8BSlg87Mn75n28P2aXzot6G0pi.jpg',
        character: 'Winnie Black',
      ),
      ActorModels(
        name: 'Dagmara Domińczyk',
        profilePath: '${imgUrl}zoZ8cJNOgAsU1rxSbhhziSTOJbZ.jpg',
        character: 'Beatrice June Harker',
      ),
    ],
    voteAverage: 6.688,
  ),
];

List<MovieModels> nowPlayingMovies = [
  MovieModels(
    title: 'Wonka',
    releaseDate: '2023-12-06',
    posterPath:
        'https://image.tmdb.org/t/p/w500/qhb1qOilapbapxWQn9jtRCMwXJF.jpg',
    backdropPath: "${imgUrl}yOm993lsJyPmBodlYjgpPwBjXP9.jpg",
    overview:
        'Willy Wonka – chock-full of ideas and determined to change the world one delectable bite at a time – is proof that the best things in life begin with a dream, and if you’re lucky enough to meet Willy Wonka, anything is possible.',
    popularity: 375.015,
    voteCount: 152,
    actors: [
      ActorModels(
        name: "Timothée Chalamet",
        profilePath: "${imgUrl}BE2sdjpgsa2rNTFa66f7upkaOP.jpg",
        character: "Willy Wonka",
      ),
      ActorModels(
        name: 'Calah Lane',
        profilePath: '${imgUrl}rhEcrfvtkIuzjOvt010xHiVHWXY.jpg',
        character: 'Noodle',
      ),
      ActorModels(
        name: 'Keegan-Michael Key',
        profilePath: '${imgUrl}vAR5gVXRG2Cl6WskXT99wgkAoH8.jpg',
        character: 'Chief-of-Police',
      ),
      ActorModels(
        name: 'Hugh Grant',
        profilePath: '${imgUrl}tUHkXYdwm405DjBm2IpPxGjYkjj.jpg',
        character: 'Oompa-Loompa',
      ),
      ActorModels(
        name: 'Paterson Joseph',
        profilePath: '${imgUrl}n8kf0aowLTcPSt72k0eC4ZShe3s.jpg',
        character: 'Arthur Slugworth',
      ),
    ],
    voteAverage: 7.207,
  ),
  MovieModels(
    title: 'Dune: Part Two',
    releaseDate: '2024-02-27',
    posterPath:
        'https://image.tmdb.org/t/p/w500/mFnF8tpPMqEwti2J2aMhYGZYdv0.jpg',
    overview:
        'Follow the mythic journey of Paul Atreides as he unites with Chani and the Fremen while on a path of revenge against the conspirators who destroyed his family. Facing a choice between the love of his life and the fate of the known universe, Paul endeavors to prevent a terrible future only he can foresee.',
    backdropPath: "${imgUrl}qBQV4i2sjIydDJUKm7pwvpyfy5p.jpg",
    popularity: 1312.486,
    voteCount: 343,
    actors: [
      ActorModels(
        name: "Timothée Chalamet",
        profilePath: "${imgUrl}BE2sdjpgsa2rNTFa66f7upkaOP.jpg",
        character: "Paul Atreides",
      ),
      ActorModels(
        name: 'Zendaya',
        profilePath: '${imgUrl}tylFh0K48CZIIhvKlA7WA1XBAtE.jpg',
        character: 'Chani',
      ),
      ActorModels(
        name: 'Rebecca Ferguson',
        profilePath: '${imgUrl}lJloTOheuQSirSLXNA3JHsrMNfH.jpg',
        character: 'Lady Jessica Atreides',
      ),
      ActorModels(
        name: 'Josh Brolin',
        profilePath: '${imgUrl}sX2etBbIkxRaCsATyw5ZpOVMPTD.jpg',
        character: 'Gurney Halleck',
      ),
      ActorModels(
        name: 'Austin Butler',
        profilePath: '${imgUrl}jn63A9goIetyvJt5DTHypjk33ip.jpg',
        character: 'Feyd-Rautha Harkonnen',
      ),
    ],
    voteAverage: 8.462,
  ),
  MovieModels(
    title: 'Poor Things',
    releaseDate: '2023-12-07',
    posterPath:
        'https://image.tmdb.org/t/p/w500/kCGlIMHnOm8JPXq3rXM6c5wMxcT.jpg',
    overview:
        'Brought back to life by an unorthodox scientist, a young woman runs off with a debauched lawyer on a whirlwind adventure across the continents. Free from the prejudices of her times, she grows steadfast in her purpose to stand for equality and liberation.',
    backdropPath: "${imgUrl}bQS43HSLZzMjZkcHJz4fGc7fNdz.jpg",
    popularity: 1312.486,
    voteCount: 1668,
    actors: [
      ActorModels(
        name: "Emma Stone",
        profilePath: "${imgUrl}eWjkPYeXxPhE2F9J3Ui6E9OWVXy.jpg",
        character: "Bella Baxter",
      ),
      ActorModels(
        name: 'Mark Ruffalo',
        profilePath: '${imgUrl}5GilHMOt5PAQh6rlUKZzGmaKEI7.jpg',
        character: 'Duncan Wedderburn',
      ),
      ActorModels(
        name: 'Willem Dafoe',
        profilePath: '${imgUrl}ui8e4sgZAwMPi3hzEO53jyBJF9B.jpg',
        character: 'Godwin Baxter',
      ),
      ActorModels(
        name: 'Ramy Youssef',
        profilePath: '${imgUrl}7ASVvzrU2cdhuIotzeKnqQVNNUM.jpg',
        character: 'Max McCandles',
      ),
      ActorModels(
        name: 'Jerrod Carmichael',
        profilePath: '${imgUrl}v1i5xodXbPw3blXYg4v0HmH3PGK.jpg',
        character: 'Harry Astley',
      ),
    ],
    voteAverage: 8.065,
  ),
  MovieModels(
    title: '황야',
    releaseDate: '2024-01-25',
    posterPath:
        'https://image.tmdb.org/t/p/w500/24CL0ySodCF8bcm38xtBeHzHp7W.jpg',
    overview:
        'After a deadly earthquake turns Seoul into a lawless badland, a fearless huntsman springs into action to rescue a teenager abducted by a mad doctor.',
    backdropPath: "${imgUrl}pWsD91G2R1Da3AKM3ymr3UoIfRb.jpg",
    popularity: 470.956,
    voteCount: 503,
    actors: [
      ActorModels(
        name: "Ma Dong-seok",
        profilePath: "${imgUrl}zt1vx7FesNA4x6mTZtyzu2uco8E.jpg",
        character: "Nam-san",
      ),
      ActorModels(
        name: 'Lee Hee-jun',
        profilePath: '${imgUrl}4slyXnHbKgzmeyJNetBSORgDDEF.jpg',
        character: 'Yang Gi-su',
      ),
      ActorModels(
        name: 'Lee Jun-young',
        profilePath: '${imgUrl}41ZqSutUfV3F2aZUNUqVmpDuyXN.jpg',
        character: 'Choi Ji-wan',
      ),
      ActorModels(
        name: 'Roh Jeong-eui',
        profilePath: '${imgUrl}ijbjqMVsipJnmxkXSC0OIgJ5jY8.jpg',
        character: 'Han Su-na',
      ),
      ActorModels(
        name: 'Ahn Ji-hye',
        profilePath: '${imgUrl}4cRUKo02kg4SYDyVWcUIlNt2IxT.jpg',
        character: 'Lee Eun-ho',
      ),
    ],
    voteAverage: 6.77,
  ),
  MovieModels(
    title: 'A través de mi ventana 3: A través de tu mirada',
    releaseDate: '2024-02-23',
    posterPath:
        'https://image.tmdb.org/t/p/w500/gwpTgtwVAwmvivBN8rAQABpx9Am.jpg',
    overview:
        'After the events of the summer, Ares and Raquel they don\'t see a way forward in their relationship and decide to go separate ways. But when they meet again in the winter in Barcelona, the love and desire they feel for each other is undeniable. Will they be able to find a way to get back together?',
    backdropPath: "${imgUrl}iWzu3dVJGNfQUkLfK9xpTWoi5mh.jpg",
    popularity: 737.495,
    voteCount: 168,
    actors: [
      ActorModels(
        name: "Clara Galle",
        profilePath: "${imgUrl}ipZQNX8KECqeCHoD4dmbb883lzP.jpg",
        character: "Raquel",
      ),
      ActorModels(
        name: 'Julio Peña',
        profilePath: '${imgUrl}drmo9CkqVkn3rKbzHeLdL7KYGwm.jpg',
        character: 'Ares Hidalgo',
      ),
      ActorModels(
        name: 'Natalia Azahara',
        profilePath: '${imgUrl}4Z9vYQLZjhrryLyfHelYh04uhTx.jpg',
        character: 'Daniela',
      ),
      ActorModels(
        name: 'Eric Masip',
        profilePath: '${imgUrl}2JmF1hJ40a3k3oyeiAoITiX1CKI.jpg',
        character: 'Artemis Hidalgo',
      ),
      ActorModels(
        name: 'Andrea Chaparro',
        profilePath: '${imgUrl}hY4gbGUKMvGTwGjf8P16GFqAcPB.jpg',
        character: 'Vera',
      ),
    ],
    voteAverage: 6.711,
  ),
];
