//
//  TestData.swift
//  GameSearchDemo
//
//  Created by Eric Negron on 5/9/24.
//

import Foundation

let searchTestFeature: Data =  """
    {
        "count": 16,
        "next": "https://api.rawg.io/api/games?key=ddc0bda15dc9404fb900098ea124e836&page=2&page_size=5&search=Starfield&search_exact=true&search_precise=true",
        "previous": null,
        "results": [
            {
                "slug": "starfield",
                "name": "Starfield",
                "playtime": 23,
                "platforms": [
                    {
                        "platform": {
                            "id": 4,
                            "name": "PC",
                            "slug": "pc"
                        }
                    },
                    {
                        "platform": {
                            "id": 186,
                            "name": "Xbox Series S/X",
                            "slug": "xbox-series-x"
                        }
                    }
                ],
                "stores": [
                    {
                        "store": {
                            "id": 1,
                            "name": "Steam",
                            "slug": "steam"
                        }
                    },
                    {
                        "store": {
                            "id": 2,
                            "name": "Xbox Store",
                            "slug": "xbox-store"
                        }
                    }
                ],
                "released": "2023-09-06",
                "tba": false,
                "background_image": "https://media.rawg.io/media/games/ba8/ba82c971336adfd290e4c0eab6504fcf.jpg",
                "rating": 3.26,
                "rating_top": 3,
                "ratings": [
                    {
                        "id": 3,
                        "title": "meh",
                        "count": 97,
                        "percent": 35.93
                    },
                    {
                        "id": 4,
                        "title": "recommended",
                        "count": 68,
                        "percent": 25.19
                    },
                    {
                        "id": 5,
                        "title": "exceptional",
                        "count": 53,
                        "percent": 19.63
                    },
                    {
                        "id": 1,
                        "title": "skip",
                        "count": 52,
                        "percent": 19.26
                    }
                ],
                "ratings_count": 261,
                "reviews_text_count": 8,
                "added": 1648,
                "added_by_status": {
                    "yet": 200,
                    "owned": 365,
                    "beaten": 94,
                    "toplay": 771,
                    "dropped": 144,
                    "playing": 74
                },
                "metacritic": 88,
                "suggestions_count": 476,
                "updated": "2024-05-06T01:52:35",
                "id": 58779,
                "score": "13.334251",
                "clip": null,
                "tags": [
                    {
                        "id": 31,
                        "name": "Singleplayer",
                        "slug": "singleplayer",
                        "language": "eng",
                        "games_count": 220522,
                        "image_background": "https://media.rawg.io/media/games/511/5118aff5091cb3efec399c808f8c598f.jpg"
                    },
                    {
                        "id": 42396,
                        "name": "Для одного игрока",
                        "slug": "dlia-odnogo-igroka",
                        "language": "rus",
                        "games_count": 46028,
                        "image_background": "https://media.rawg.io/media/games/8cc/8cce7c0e99dcc43d66c8efd42f9d03e3.jpg"
                    },
                    {
                        "id": 42417,
                        "name": "Экшен",
                        "slug": "ekshen",
                        "language": "rus",
                        "games_count": 38542,
                        "image_background": "https://media.rawg.io/media/games/2ba/2bac0e87cf45e5b508f227d281c9252a.jpg"
                    },
                    {
                        "id": 42392,
                        "name": "Приключение",
                        "slug": "prikliuchenie",
                        "language": "rus",
                        "games_count": 36505,
                        "image_background": "https://media.rawg.io/media/games/2ba/2bac0e87cf45e5b508f227d281c9252a.jpg"
                    },
                    {
                        "id": 40847,
                        "name": "Steam Achievements",
                        "slug": "steam-achievements",
                        "language": "eng",
                        "games_count": 36657,
                        "image_background": "https://media.rawg.io/media/games/490/49016e06ae2103881ff6373248843069.jpg"
                    },
                    {
                        "id": 7,
                        "name": "Multiplayer",
                        "slug": "multiplayer",
                        "language": "eng",
                        "games_count": 37503,
                        "image_background": "https://media.rawg.io/media/games/b49/b4912b5dbfc7ed8927b65f05b8507f6c.jpg"
                    },
                    {
                        "id": 40849,
                        "name": "Steam Cloud",
                        "slug": "steam-cloud",
                        "language": "eng",
                        "games_count": 17278,
                        "image_background": "https://media.rawg.io/media/games/b49/b4912b5dbfc7ed8927b65f05b8507f6c.jpg"
                    },
                    {
                        "id": 13,
                        "name": "Atmospheric",
                        "slug": "atmospheric",
                        "language": "eng",
                        "games_count": 32548,
                        "image_background": "https://media.rawg.io/media/games/f46/f466571d536f2e3ea9e815ad17177501.jpg"
                    },
                    {
                        "id": 42425,
                        "name": "Для нескольких игроков",
                        "slug": "dlia-neskolkikh-igrokov",
                        "language": "rus",
                        "games_count": 9491,
                        "image_background": "https://media.rawg.io/media/games/4a0/4a0a1316102366260e6f38fd2a9cfdce.jpg"
                    },
                    {
                        "id": 42394,
                        "name": "Глубокий сюжет",
                        "slug": "glubokii-siuzhet",
                        "language": "rus",
                        "games_count": 11861,
                        "image_background": "https://media.rawg.io/media/games/4be/4be6a6ad0364751a96229c56bf69be59.jpg"
                    },
                    {
                        "id": 24,
                        "name": "RPG",
                        "slug": "rpg",
                        "language": "eng",
                        "games_count": 20341,
                        "image_background": "https://media.rawg.io/media/games/ee3/ee3e10193aafc3230ba1cae426967d10.jpg"
                    },
                    {
                        "id": 42412,
                        "name": "Ролевая игра",
                        "slug": "rolevaia-igra",
                        "language": "rus",
                        "games_count": 16754,
                        "image_background": "https://media.rawg.io/media/games/4e0/4e0e7b6d6906a131307c94266e5c9a1c.jpg"
                    },
                    {
                        "id": 118,
                        "name": "Story Rich",
                        "slug": "story-rich",
                        "language": "eng",
                        "games_count": 21003,
                        "image_background": "https://media.rawg.io/media/games/8a0/8a02f84a5916ede2f923b88d5f8217ba.jpg"
                    },
                    {
                        "id": 42442,
                        "name": "Открытый мир",
                        "slug": "otkrytyi-mir",
                        "language": "rus",
                        "games_count": 5448,
                        "image_background": "https://media.rawg.io/media/games/618/618c2031a07bbff6b4f611f10b6bcdbc.jpg"
                    },
                    {
                        "id": 36,
                        "name": "Open World",
                        "slug": "open-world",
                        "language": "eng",
                        "games_count": 7266,
                        "image_background": "https://media.rawg.io/media/games/511/5118aff5091cb3efec399c808f8c598f.jpg"
                    },
                    {
                        "id": 8,
                        "name": "First-Person",
                        "slug": "first-person",
                        "language": "eng",
                        "games_count": 31080,
                        "image_background": "https://media.rawg.io/media/games/be0/be01c3d7d8795a45615da139322ca080.jpg"
                    },
                    {
                        "id": 42429,
                        "name": "От первого лица",
                        "slug": "ot-pervogo-litsa",
                        "language": "rus",
                        "games_count": 10152,
                        "image_background": "https://media.rawg.io/media/games/d58/d588947d4286e7b5e0e12e1bea7d9844.jpg"
                    },
                    {
                        "id": 42441,
                        "name": "От третьего лица",
                        "slug": "ot-tretego-litsa",
                        "language": "rus",
                        "games_count": 6641,
                        "image_background": "https://media.rawg.io/media/games/960/960b601d9541cec776c5fa42a00bf6c4.jpg"
                    },
                    {
                        "id": 149,
                        "name": "Third Person",
                        "slug": "third-person",
                        "language": "eng",
                        "games_count": 11124,
                        "image_background": "https://media.rawg.io/media/games/8a0/8a02f84a5916ede2f923b88d5f8217ba.jpg"
                    },
                    {
                        "id": 32,
                        "name": "Sci-fi",
                        "slug": "sci-fi",
                        "language": "eng",
                        "games_count": 18804,
                        "image_background": "https://media.rawg.io/media/games/120/1201a40e4364557b124392ee50317b99.jpg"
                    },
                    {
                        "id": 42423,
                        "name": "Научная фантастика",
                        "slug": "nauchnaia-fantastika",
                        "language": "rus",
                        "games_count": 7703,
                        "image_background": "https://media.rawg.io/media/games/e6d/e6de699bd788497f4b52e2f41f9698f2.jpg"
                    },
                    {
                        "id": 40845,
                        "name": "Partial Controller Support",
                        "slug": "partial-controller-support",
                        "language": "eng",
                        "games_count": 11441,
                        "image_background": "https://media.rawg.io/media/games/2ad/2ad87a4a69b1104f02435c14c5196095.jpg"
                    },
                    {
                        "id": 6,
                        "name": "Exploration",
                        "slug": "exploration",
                        "language": "eng",
                        "games_count": 22367,
                        "image_background": "https://media.rawg.io/media/games/737/737ea5662211d2e0bbd6f5989189e4f1.jpg"
                    },
                    {
                        "id": 97,
                        "name": "Action RPG",
                        "slug": "action-rpg",
                        "language": "eng",
                        "games_count": 6656,
                        "image_background": "https://media.rawg.io/media/games/8d4/8d46786ca86b1d95f3dc7e700e2dc4dd.jpg"
                    },
                    {
                        "id": 42489,
                        "name": "Ролевой экшен",
                        "slug": "rolevoi-ekshen",
                        "language": "rus",
                        "games_count": 3643,
                        "image_background": "https://media.rawg.io/media/games/157/15742f2f67eacff546738e1ab5c19d20.jpg"
                    },
                    {
                        "id": 69,
                        "name": "Action-Adventure",
                        "slug": "action-adventure",
                        "language": "eng",
                        "games_count": 15920,
                        "image_background": "https://media.rawg.io/media/games/1f4/1f47a270b8f241e4676b14d39ec620f7.jpg"
                    },
                    {
                        "id": 25,
                        "name": "Space",
                        "slug": "space",
                        "language": "eng",
                        "games_count": 42637,
                        "image_background": "https://media.rawg.io/media/games/2ba/2bac0e87cf45e5b508f227d281c9252a.jpg"
                    },
                    {
                        "id": 62,
                        "name": "Moddable",
                        "slug": "moddable",
                        "language": "eng",
                        "games_count": 899,
                        "image_background": "https://media.rawg.io/media/games/be9/be9cf02720c9326e11d0fda14518554f.jpg"
                    },
                    {
                        "id": 42422,
                        "name": "Космос",
                        "slug": "kosmos-2",
                        "language": "rus",
                        "games_count": 3999,
                        "image_background": "https://media.rawg.io/media/games/e6d/e6de699bd788497f4b52e2f41f9698f2.jpg"
                    },
                    {
                        "id": 42438,
                        "name": "Поддержка модификаций",
                        "slug": "podderzhka-modifikatsii",
                        "language": "rus",
                        "games_count": 710,
                        "image_background": "https://media.rawg.io/media/games/f3e/f3eec35c6218dcfd93a537751e6bfa61.jpg"
                    },
                    {
                        "id": 42530,
                        "name": "Кастомизация персонажа",
                        "slug": "kastomizatsiia-personazha",
                        "language": "rus",
                        "games_count": 3674,
                        "image_background": "https://media.rawg.io/media/games/c22/c22d804ac753c72f2617b3708a625dec.jpg"
                    },
                    {
                        "id": 121,
                        "name": "Character Customization",
                        "slug": "character-customization",
                        "language": "eng",
                        "games_count": 4450,
                        "image_background": "https://media.rawg.io/media/games/6fc/6fcf4cd3b17c288821388e6085bb0fc9.jpg"
                    },
                    {
                        "id": 42490,
                        "name": "Приключенческий экшен",
                        "slug": "prikliuchencheskii-ekshen",
                        "language": "rus",
                        "games_count": 8306,
                        "image_background": "https://media.rawg.io/media/games/3be/3be0e624424d3453005019799a760af2.jpg"
                    },
                    {
                        "id": 42460,
                        "name": "Реализм",
                        "slug": "realizm",
                        "language": "rus",
                        "games_count": 5399,
                        "image_background": "https://media.rawg.io/media/games/e31/e315213a5cb21645df8db3e5191e530c.jpg"
                    },
                    {
                        "id": 77,
                        "name": "Realistic",
                        "slug": "realistic",
                        "language": "eng",
                        "games_count": 5421,
                        "image_background": "https://media.rawg.io/media/games/736/73619bd336c894d6941d926bfd563946.jpg"
                    },
                    {
                        "id": 110,
                        "name": "Cinematic",
                        "slug": "cinematic",
                        "language": "eng",
                        "games_count": 1985,
                        "image_background": "https://media.rawg.io/media/games/7a2/7a2500ee8b2c0e1ff268bb4479463dea.jpg"
                    },
                    {
                        "id": 42623,
                        "name": "Кинематографичная",
                        "slug": "kinematografichnaia",
                        "language": "rus",
                        "games_count": 1891,
                        "image_background": "https://media.rawg.io/media/games/07a/07a74470a2618fd71945db0619602baf.jpg"
                    },
                    {
                        "id": 58132,
                        "name": "Атмосферная",
                        "slug": "atmosfernaia",
                        "language": "rus",
                        "games_count": 8232,
                        "image_background": "https://media.rawg.io/media/screenshots/30f/30fe09ca354adfd72aeb47b34dbf153a.jpg"
                    },
                    {
                        "id": 66533,
                        "name": "Исследования",
                        "slug": "issledovaniia",
                        "language": "rus",
                        "games_count": 7696,
                        "image_background": "https://media.rawg.io/media/games/082/082365507ff04d456c700157072d35db.jpg"
                    },
                    {
                        "id": 42565,
                        "name": "Космический симулятор",
                        "slug": "kosmicheskii-simuliator",
                        "language": "rus",
                        "games_count": 796,
                        "image_background": "https://media.rawg.io/media/screenshots/4e6/4e6c82a4af367d9fce2dc974ec8a7229.jpg"
                    },
                    {
                        "id": 241,
                        "name": "Space Sim",
                        "slug": "space-sim",
                        "language": "eng",
                        "games_count": 1821,
                        "image_background": "https://media.rawg.io/media/games/174/1743b3dd185bda4a7be349347d4064df.jpg"
                    }
                ],
                "esrb_rating": {
                    "id": 4,
                    "name": "Mature",
                    "slug": "mature",
                    "name_en": "Mature",
                    "name_ru": "С 17 лет"
                },
                "user_game": null,
                "reviews_count": 270,
                "saturated_color": "0f0f0f",
                "dominant_color": "0f0f0f",
                "short_screenshots": [
                    {
                        "id": -1,
                        "image": "https://media.rawg.io/media/games/ba8/ba82c971336adfd290e4c0eab6504fcf.jpg"
                    },
                    {
                        "id": 2883043,
                        "image": "https://media.rawg.io/media/screenshots/f7d/f7d990724dd553484e527b4096025a65.jpg"
                    },
                    {
                        "id": 2883048,
                        "image": "https://media.rawg.io/media/screenshots/0ad/0adfb93f5621bd549b8813b6b4c6e623.jpg"
                    },
                    {
                        "id": 2883054,
                        "image": "https://media.rawg.io/media/screenshots/f74/f7431a20a8bb390b813ea751d758ed07.jpg"
                    },
                    {
                        "id": 2883066,
                        "image": "https://media.rawg.io/media/screenshots/7bc/7bc2c5288b78693eb9eaa0a06a8361e9.jpg"
                    },
                    {
                        "id": 2883071,
                        "image": "https://media.rawg.io/media/screenshots/85f/85fee5a7b12edcbe8352b2d1676296ac.jpg"
                    },
                    {
                        "id": 2883075,
                        "image": "https://media.rawg.io/media/screenshots/eb6/eb61692a22bef1e16d43ee1c49f31814.jpg"
                    }
                ],
                "parent_platforms": [
                    {
                        "platform": {
                            "id": 1,
                            "name": "PC",
                            "slug": "pc"
                        }
                    },
                    {
                        "platform": {
                            "id": 3,
                            "name": "Xbox",
                            "slug": "xbox"
                        }
                    }
                ],
                "genres": [
                    {
                        "id": 3,
                        "name": "Adventure",
                        "slug": "adventure"
                    },
                    {
                        "id": 5,
                        "name": "RPG",
                        "slug": "role-playing-games-rpg"
                    }
                ]
            },
    ]
    }
    """.data(using: .utf8)!



let screenShotsTestData: Data = """
    {
        "count": 6,
        "next": null,
        "previous": null,
        "results": [
            {
                "id": 2883043,
                "image": "https://media.rawg.io/media/screenshots/f7d/f7d990724dd553484e527b4096025a65.jpg",
                "width": 3840,
                "height": 2160,
                "is_deleted": false
            },
            {
                "id": 2883048,
                "image": "https://media.rawg.io/media/screenshots/0ad/0adfb93f5621bd549b8813b6b4c6e623.jpg",
                "width": 3840,
                "height": 2160,
                "is_deleted": false
            },
            {
                "id": 2883054,
                "image": "https://media.rawg.io/media/screenshots/f74/f7431a20a8bb390b813ea751d758ed07.jpg",
                "width": 3840,
                "height": 2160,
                "is_deleted": false
            },
            {
                "id": 2883066,
                "image": "https://media.rawg.io/media/screenshots/7bc/7bc2c5288b78693eb9eaa0a06a8361e9.jpg",
                "width": 3840,
                "height": 2160,
                "is_deleted": false
            },
            {
                "id": 2883071,
                "image": "https://media.rawg.io/media/screenshots/85f/85fee5a7b12edcbe8352b2d1676296ac.jpg",
                "width": 3840,
                "height": 2160,
                "is_deleted": false
            },
            {
                "id": 2883075,
                "image": "https://media.rawg.io/media/screenshots/eb6/eb61692a22bef1e16d43ee1c49f31814.jpg",
                "width": 3840,
                "height": 2160,
                "is_deleted": false
            }
        ]
    }
""".data(using: .utf8)!
