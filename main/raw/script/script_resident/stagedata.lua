---------------------------------------------------------------
-- ステージの構成データを設定します。
---------------------------------------------------------------
-- パラメータの説明
--  name            : ステージコード.ユニークな識別子.
--  stage           : 使用するステージリソースのコード. 記述がない場合は name を使う.
--  stage_no        : ステージ番号.重複しない連番.0オリジン.
--  attrs           : ステージ属性.
--  timelimit       : 制限時間が必要な場合、その数値を記入
--  noisetime       : 開始時ノイズ表現の長さを記入（未記入時はデフォルトの2.0）
--  clear           : クリア目標。(goal:ゴール到着/time:制限時間以内にゴール到着)
--  mission         : ミッション。5つまで登録可能
--                    goal（単純クリアでミッション達成）
--                    rank（Sランククリア）
--                    nodamage（ノーミスクリア）
--                    ring（指定した数字以上のリングを持ってクリア）
--                    redring（レッドリング5個全てを回収）
--                    numberring（ナンバーリングを回収）
--                    silvermoonring（シルバームーンリングを回収）
--                    hidegoal（隠しゴールを見つけてクリア）
--                    shadowtails（影テイルスより早くクリア）
--                    mine（地雷に当たらずクリア）
--                    animal（アニマルを救出してクリア）
--  ring_mission    : リングミッション時必要なリング数
--  rank            : 先頭からS,A,B,C用の閾値を秒単位で設定
--  cyber_name      : 主に電脳での使用を想定。リザルトにて表示されるステージ名
--  scene_param_name       : 使用するシーンパラメータの名前を指定
--  scene_param_stage      : 使用するシーンパラメータの検索ステージを指定(開発限定)
--  default_scene_param_no : デフォルトのシーンパラメータスロット番号を指定
--  deadheight      : 死亡高度. FxParam の値を上書きする.
--  cyber_mode      : 電脳モード. low-gravity, time-extend, speed-scale, nitro, maxspeed-challenge

--------------------------------------------------------------
-- !! CAUTION !!
-- このファイルは製品には含まれます.
-- 開発専用のステージは記述しないようにしてください.

stages = {
    {
        name     = "w1r02",
        attrs    = { "navmesh", "heightfield", "autosave","pointcloud" },
    },
    {
        name     = "w1r01",
        stage    = "w1r02",
        attrs    = { "navmesh", "heightfield", "autosave","pointcloud" },
    },
    {
        name     = "w1r03",
        stage_no = 0,
        attrs    = { "navmesh", "heightfield", "autosave","pointcloud" },
    },
    {
        name     = "w1r04",
        stage_no = 4,
        attrs    = { "navmesh", "heightfield", "autosave","pointcloud" },
    },
    {
        name     = "w1r05",
        stage    = "w1r03",
        stage_no = 3,
        attrs    = { "navmesh", "heightfield", "autosave","pointcloud" },
    },
    {
        name     = "w1r06",
        stage    = "w1r04",
        stage_no = 5,
        attrs    = { "navmesh", "heightfield", "autosave","pointcloud", "extra", "sonic", "tails", "knuckles", "amy" },
    },
    {
        name     = "w2r01",
        stage_no = 1,
        attrs    = { "navmesh","heightfield","autosave","pointcloud" },
    },

    {
        name     = "w3r01",
        stage_no = 2,
        attrs    = { "navmesh","heightfield","autosave","pointcloud","lava" }
    },

    --{
    --    name     = "w4r01",
    --    stage_no = 3,
    --},

    {
        name     = "w5r01",
        attrs    = { "hacking", "pointcloud", "lastboss" }
    },

    {
        name     = "w5t01",
        attrs    = { "pointcloud", "tutorial" }
    },
    {
        name     = "w5t02",
        attrs    = { "pointcloud", "mastertrial" }
    },


    {
    -- Green Hill 01
        name  = "w6d01",
        attrs = { "cyber", "pointcloud" },
        cyber_stage_no = 0,
        cyber_name = "1-1",
        mission = {"goal", "rank", "ring", "redring"},
        ring_mission = 150,
        rank = {43, 48, 60, 90},
	rank_veryhard = {40, 43, 46, 49},
        rank_challenge = {43, 48, 53, 63},
        rank_challenge_all = {43, 48, 53, 63},
    },
    {
    -- Green Hill 02
        name  = "w6d02",
        attrs = { "cyber", "pointcloud" },
        cyber_stage_no = 1,
        noisetime = 0.9,
        cyber_name = "1-4",
        mission = {"goal", "rank", "ring", "redring"},
        ring_mission = 20,
        rank = {53, 56, 62, 70},
	rank_veryhard = {50, 52, 55, 60},
        rank_challenge = {233, 253, 273, 313},
        rank_challenge_all = {233, 253, 273, 313},
    },
    {
    -- Green Hill 03
        name  = "w6d03",
        attrs = { "cyber", "pointcloud" },
        cyber_stage_no = 2,
        cyber_name = "2-6",
        mission = {"goal", "rank", "ring", "redring"},
        ring_mission = 100,
        rank = {83, 88, 95, 105},
	rank_veryhard = {78, 81, 85, 92},
        rank_challenge = {420, 450, 480, 540},
        rank_challenge_all = {888, 953, 1018, 1148},
    },
    {
    -- Green Hill 04
        name  = "w6d04",
        attrs = { "cyber", "pointcloud" },
        cyber_stage_no = 3,
        cyber_name = "3-1",
        mission = {"goal", "rank", "ring", "redring"},
        ring_mission = 20,
        rank = {83, 87, 92, 98},
	rank_veryhard = {70, 72, 75, 80},
        rank_challenge = {120, 125, 130, 140},
        rank_challenge_all = {1098, 1173, 1248, 1398},
    },
    {
    -- Green Hill 05
        name  = "w6d05",
        attrs = { "cyber", "sideview", "pointcloud" },
        cyber_stage_no = 4,
        cyber_name = "2-1",
        mission = {"goal", "rank", "ring", "redring"},
        ring_mission = 30,
        rank = {55, 58, 65, 75},
	rank_veryhard = {52, 55, 60, 70},
        rank_challenge = {70, 75, 80, 90},
        rank_challenge_all = {538, 578, 618, 698},
    },
    {
    -- Green Hill 06
        name  = "w6d06",
        attrs = { "cyber", "sideview", "pointcloud" },
        cyber_stage_no = 5,
        cyber_name = "1-6",
        mission = {"goal", "rank", "ring", "redring"},
        ring_mission = 50,
        rank = {58, 62, 69, 78},
	rank_veryhard = {70, 73, 76, 79},
        rank_challenge = {383, 413, 443, 503},
        rank_challenge_all = {383, 413, 443, 503},
    },
    {
    -- Green Hill 07
        name  = "w6d07",
        attrs = { "cyber", "pointcloud" },
        cyber_stage_no = 6,
        cyber_name = "3-5",
        mission = {"goal", "rank", "ring", "redring"},
        ring_mission = 90,
        rank = {65, 70, 80, 90},
	rank_veryhard = {56, 59, 62, 65},
        rank_challenge = {425, 450, 475, 525},
        rank_challenge_all = {1403, 1498, 1593, 1783},
    },
    {
    -- Green Hill 08
        name  = "w6d08",
        attrs = { "cyber", "sideview", "pointcloud" },
        cyber_stage_no = 7,
        cyber_name = "3-2",
        mission = {"goal", "rank", "ring", "redring"},
        ring_mission = 30,
        rank = {60, 64, 70, 80},
	rank_veryhard = {56, 58, 61, 65},
        rank_challenge = {200, 210, 220, 240},
        rank_challenge_all = {1178, 1258, 1338, 1498},
    },
    {
    -- Green Hill 09
        name  = "w6d09",
        attrs = { "cyber", "sideview", "pointcloud" },
        cyber_stage_no = 8,
        cyber_name = "3-4",
        mission = {"goal", "rank", "ring", "redring"},
        ring_mission = 30,
        rank = {55, 59, 65, 75},
	rank_veryhard = {52, 54, 58, 65},
        rank_challenge = {370, 390, 410, 450},
        rank_challenge_all = {1348, 1438, 1528, 1708},
    },
    {
    -- Green Hill 10
        name  = "w6d10",
        attrs = { "cyber", "pointcloud" },
        cyber_stage_no = 9,
        cyber_name = "4-5",
        mission = {"goal", "rank", "ring", "redring"},
        ring_mission = 180,
        rank = {53, 58, 65, 75},
	rank_veryhard = {48, 50, 53, 58},
        rank_challenge = {495, 520, 545, 595},
        rank_challenge_all = {2183, 2313, 2443, 2703},
    },
    {
    -- Chemical Plant 01
        name  = "w7d01",
        attrs = { "cyber", "pointcloud" },
        cyber_stage_no = 10,
        cyber_name = "4-3",
        mission = {"goal", "rank", "ring", "redring"},
        ring_mission = 70,
        rank = {58, 61, 65, 73},
	rank_veryhard = {54, 56, 59, 64},
        rank_challenge = {265, 280, 295, 325},
        rank_challenge_all = {1953, 2073, 2193, 2433},
    },
    {
    -- Chemical Plant 02
        name  = "w7d02",
        attrs = { "cyber", "sideview", "pointcloud" },
        cyber_stage_no = 11,
        cyber_name = "2-3",
        mission = {"goal", "rank", "ring", "redring"},
        ring_mission = 90,
        rank = {45, 48, 54, 60},
	rank_veryhard = {40, 42, 45, 48},
        rank_challenge = {170, 185, 200, 230},
        rank_challenge_all = {638, 688, 738, 838},
    },
    {
    -- Chemical Plant 03
        name  = "w7d03",
        attrs = { "cyber", "sideview", "pointcloud" },
        cyber_stage_no = 12,
        cyber_name = "3-7",
        mission = {"goal", "rank", "ring", "redring"},
        ring_mission = 80,
        rank = {75, 78, 83, 90},
	rank_veryhard = {65, 67, 70, 75},
        rank_challenge = {710,745, 780, 850},
        rank_challenge_all = {1688, 1793, 1898, 2108},
    },
    {
    -- Chemical Plant 04
        name  = "w7d04",
        attrs = { "cyber", "pointcloud" },
        cyber_stage_no = 13,
        cyber_name = "1-5",
        mission = {"goal", "rank", "ring", "redring"},
        ring_mission = 40,
        rank = {55, 60, 68, 75},
	rank_veryhard = {42, 45, 48, 52},
        rank_challenge = {308, 333, 358, 408},
        rank_challenge_all = {308, 333, 358, 408},
    },
    {
    -- Chemical Plant 05
        name  = "w7d05",
        attrs = { "cyber", "pointcloud" },
        cyber_stage_no = 14,
        cyber_name = "4-8",
        mission = {"goal", "rank", "ring", "redring"},
        ring_mission = 15,
        rank = {30, 35, 45, 55},
	rank_veryhard = {23, 26, 29, 32},
        rank_challenge = {685, 725, 765, 845},
        rank_challenge_all = {2373, 2518, 2663, 2953},
    },
    {
    -- Chemical Plant 06
        name  = "w7d06",
        attrs = { "cyber", "pointcloud" },
        cyber_stage_no = 15,
        cyber_name = "2-4",
        mission = {"goal", "rank", "ring", "redring"},
        ring_mission = 75,
        rank = {43, 46, 50, 55},
	rank_veryhard = {38, 40, 42, 45},
        rank_challenge = {230, 250, 270, 310},
        rank_challenge_all = {698, 753, 808, 918},
    },
    {
    -- Chemical Plant 07
        name  = "w7d07",
        default_scene_param_no = 7;
        attrs = { "cyber", "sideview", "pointcloud" },
        cyber_stage_no = 16,
        cyber_name = "4-6",
        mission = {"goal", "rank", "ring", "redring"},
        ring_mission = 40,
        rank = {75, 78, 83, 90},
	rank_veryhard = {68, 71, 74, 78},
        rank_challenge = {585, 615, 645, 705},
        rank_challenge_all = {2273, 2408, 2543, 2813},
    },
    {
    -- Chemical Plant 08
        name  = "w7d08",
        attrs = { "cyber", "boarding", "pointcloud" },
        cyber_stage_no = 17,
        cyber_name = "4-1",
        mission = {"goal", "rank", "ring", "redring"},
        ring_mission = 130,
        rank = {80, 83, 87, 92},
	rank_veryhard = {72, 74, 77, 80},
        rank_challenge = {100, 105, 110, 120},
        rank_challenge_all = {1788, 1898, 2008, 2228},
    },
       {
    -- Sky Sanctuary 01
        name  = "w8d01",
        attrs = { "cyber", "pointcloud" },
        cyber_stage_no = 18,
        cyber_name = "1-2",
        mission = {"goal", "rank", "ring", "redring"},
        ring_mission = 80,
        rank = {55, 60, 70, 80},
	rank_veryhard = {48, 50, 53, 57},
        rank_challenge = {98, 108, 118,138},
        rank_challenge_all = {98, 108, 118,138},
    },
    {
    -- Sky Sanctuary 02
        name  = "w8d02",
        attrs = { "cyber", "pointcloud" },
        cyber_stage_no = 19,
        noisetime = 4.5,
        cyber_name = "3-3",
        mission = {"goal", "rank", "ring", "redring"},
        ring_mission = 25,
        rank = {78, 81, 85, 90},
	rank_veryhard = {75, 77, 80, 84},
        rank_challenge = {300, 315, 330, 360},
        rank_challenge_all = {1278, 1363, 1448, 1618},
    },
    {
    -- Sky Sanctuary 03
        name  = "w8d03",
        attrs = { "cyber", "pointcloud" },
        cyber_stage_no = 20,
        cyber_name = "2-2",
        mission = {"goal", "rank", "ring", "redring"},
        ring_mission = 30,
        rank = {32, 35, 38, 43},
	rank_veryhard = {28, 30, 33, 37},
        rank_challenge = {115, 125, 135, 155},
        rank_challenge_all = {583, 628, 673, 763},
    },
    {
    -- Sky Sanctuary 04
        name  = "w8d04",
        attrs = { "cyber", "sideview", "pointcloud" },
        cyber_stage_no = 21,
        cyber_name = "2-5",
        mission = {"goal", "rank", "ring", "redring"},
        ring_mission = 30,
        rank = {48, 51, 55, 60},
	rank_veryhard = {45, 47, 49, 52},
        rank_challenge = {300, 325, 350, 400},
        rank_challenge_all = {768, 828, 888, 1008},
    },
    {
    -- Sky Sanctuary 05
        name  = "w8d05",
        attrs = { "cyber", "sideview", "pointcloud" },
        cyber_stage_no = 22,
        cyber_name = "2-7",
        mission = {"goal", "rank", "ring", "redring"},
        ring_mission = 30,
        rank = {65, 68, 72, 78},
	rank_veryhard = {58, 61, 64, 67},
        rank_challenge = {510, 545, 580, 650},
        rank_challenge_all = {978, 1048, 1118, 1258},
    },
    {
    -- Sky Sanctuary 06
        name  = "w8d06",
        attrs = { "cyber", "sideview", "pointcloud" },
        cyber_stage_no = 23,
        noisetime = 0.5,
        cyber_name = "3-6",
        mission = {"goal", "rank", "ring", "redring"},
        ring_mission = 30,
        rank = {103, 107, 112, 120},
	rank_veryhard = {98, 100, 103, 108},
        rank_challenge = {600, 630, 660, 720},
        rank_challenge_all = {1578, 1678, 1778, 1978},
    },
    {
    -- Highway 02
        name  = "w9d02",
        scene_param_name = "w9d02";
        default_scene_param_no = 7;
        attrs = { "cyber", "pointcloud" },
        cyber_stage_no = 24,
        cyber_name = "4-2",
        mission = {"goal", "rank", "ring", "redring"},
        ring_mission = 120,
        rank = {65, 67, 69, 75},
	rank_veryhard = {62, 64, 67, 70},
        rank_challenge = {175, 185, 195, 215},
        rank_challenge_all = {1863, 1978, 2093, 2323},
    },
    {
    -- Highway 03
        name  = "w9d03",
        attrs = { "cyber", "pointcloud" },
        cyber_stage_no = 25,
        cyber_name = "4-4",
        mission = {"goal", "rank", "ring", "redring"},
        ring_mission = 150,
        rank = {108, 111, 115, 120},
	rank_veryhard = {102, 104, 170, 110},
        rank_challenge = {405, 425, 445, 485},
        rank_challenge_all = {2093, 2218, 2343, 2593},
    },
    {
    -- Highway 04
        name  = "w9d04",
        attrs = { "cyber", "sideview", "pointcloud" },
        cyber_stage_no = 26,
        cyber_name = "1-3",
        mission = {"goal", "rank", "ring", "redring"},
        ring_mission = 80,
        rank = {40, 42, 45, 50},
	rank_veryhard = {35, 36, 38, 40},
        rank_challenge = {158, 173, 188, 218},
        rank_challenge_all = {158, 173, 188, 218},
    },
    {
    -- Highway 05
        name  = "w9d05",
        attrs = { "cyber", "pointcloud" },
        cyber_stage_no = 27,
        cyber_name = "4-7",
        mission = {"goal", "rank", "ring", "redring"},
        ring_mission = 80,
        rank = {65, 68, 72, 78},
	rank_veryhard = {60, 62, 65, 68},
        rank_challenge = {655, 690, 725, 795},
        rank_challenge_all = {2343, 2483, 2623, 2903},
    },
    {
    -- Highway 06
        name  = "w9d06",
        attrs = { "cyber", "pointcloud" },
        cyber_stage_no = 28,
        cyber_name = "1-7",
        mission = {"goal", "rank", "ring", "redring"},
        ring_mission = 50,
        rank = {52, 55, 60, 65},
	rank_veryhard = {48, 50, 52, 55},
        rank_challenge = {468, 503, 538, 608},
        rank_challenge_all = {468, 503, 538, 608},
    },
    {
    -- Highway 07
        name  = "w9d07",
        attrs = { "cyber", "boarding", "pointcloud" },
        cyber_stage_no = 29,
        cyber_name = "4-9",
        mission = {"goal", "rank", "ring", "redring"},
        ring_mission = 120,
        rank = {70, 73, 76, 80},
	rank_veryhard = {59, 62, 65, 68},
        rank_challenge = {760, 805, 850, 940},
        rank_challenge_all = {2448, 2598, 2748, 3048},
    },

-- ここから第３弾アップデート用電脳ステージ

     {
    -- Green Hill 02
        name  = "w6d21",
	stage = "w6d02",
        attrs = { "cyber", "pointcloud", "extra" ,"deleteFalldeadCol", "deleteAirwallCol", "deleteGrindrail", "changeNewCol"},
        cyber_stage_no = 31,
        noisetime = 0.9,
        cyber_name = "4-A",
	cyber_mode= "nitro",
        mission = {"numberring", "silvermoonring", "hidegoal","animal"},
        ring_mission = 20,
        rank = {93, 96, 100, 108},
	rank_veryhard = {85, 87, 89, 93},
        rank_challenge = {233, 253, 273, 313},
        rank_challenge_all = {233, 253, 273, 313},
    },
    {
    -- Green Hill 04
        name  = "w6d22",
	stage = "w6d04",
        attrs = { "cyber", "pointcloud", "extra" ,"deleteFalldeadCol", "deleteAirwallCol", "deleteGrindrail","changeNewCol"},
        cyber_stage_no = 32,
        cyber_name = "4-B",
        mission = {"numberring", "silvermoonring", "shadowtails", "animal"},
        ring_mission = 20,
        rank = {70, 73, 78, 85},
	rank_veryhard = {65, 67, 70, 75},
        rank_challenge = {120, 125, 130, 140},
        rank_challenge_all = {1098, 1173, 1248, 1398},
    },
    {
    -- Green Hill 10
        name  = "w6d23",
	stage = "w6d10",
        attrs = { "cyber", "pointcloud", "extra" ,"deleteFalldeadCol", "deleteAirwallCol", "deleteGrindrail","changeNewCol"},
        cyber_stage_no = 33,
        cyber_name = "4-C",
        mission = {"numberring", "silvermoonring", "hidegoal", "shadowtails"},
        ring_mission = 180,
	cyber_mode= "nitro",
        rank = {63, 66, 70, 78},
	rank_veryhard = {58, 60, 62, 65},
        rank_challenge = {495, 520, 545, 595},
        rank_challenge_all = {2183, 2313, 2443, 2703},
    },
    {
    -- Chemical Plant 01
        name  = "w7d21",
	stage = "w7d01",
        attrs = { "cyber", "pointcloud", "extra" ,"deleteFalldeadCol", "deleteAirwallCol", "deleteGrindrail","changeNewCol"},
        cyber_stage_no = 34,
        cyber_name = "4-D",
        mission = {"numberring", "hidegoal", "mine",  "animal"},
        ring_mission = 70,
        rank = {50, 53, 56, 60},
	rank_veryhard = {47, 49, 52, 55},
        rank_challenge = {265, 280, 295, 325},
        rank_challenge_all = {1953, 2073, 2193, 2433},
    },
    {
    -- Chemical Plant 04
        name  = "w7d22",
	stage = "w7d04",
        attrs = { "cyber", "pointcloud", "extra" ,"deleteFalldeadCol", "deleteAirwallCol", "deleteGrindrail"},
        cyber_stage_no = 35,
        cyber_name = "4-E",
        mission = {"numberring", "silvermoonring", "hidegoal", "animal"},
        ring_mission = 40,
	cyber_mode = "time-extend",
	timelimit = 65,
        rank = {56, 59, 65, 70},
	rank_veryhard = {48, 50, 52, 55},
        rank_challenge = {308, 333, 358, 408},
        rank_challenge_all = {308, 333, 358, 408},
    },
    {
    -- Chemical Plant 06
        name  = "w7d23",
	stage = "w7d06",
        attrs = { "cyber", "pointcloud", "extra","deleteFalldeadCol", "deleteAirwallCol", "deleteGrindrail", "changeNewCol" },
        cyber_stage_no = 36,
        cyber_name = "4-F",
        mission = {"numberring", "silvermoonring", "shadowtails", "animal"},
        ring_mission = 75,
        rank = {46, 48, 51, 55},
	rank_veryhard = {43, 45, 47, 50},
        rank_challenge = {230, 250, 270, 310},
        rank_challenge_all = {698, 753, 808, 918},
    },
    {
    -- 3rd Update Highway 02
        name  = "w9d21",
	stage = "w9d02",
        default_scene_param_no = 7;
        attrs = { "cyber", "pointcloud", "extra" ,"deleteFalldeadCol", "deleteAirwallCol", "deleteGrindrail"},
        cyber_stage_no = 37,
        cyber_name = "4-G",
        mission = {"numberring", "silvermoonring", "hidegoal", "animal"},
        rank = {85, 87, 90, 95},
	rank_veryhard = {80, 82, 85, 88},
        rank_challenge = {175, 185, 195, 215},
        rank_challenge_all = {1863, 1978, 2093, 2323},
    },
    {
    --3rd Update Highway 03
        name  = "w9d22",
	stage = "w9d03",
        attrs = { "cyber", "pointcloud", "extra", "restrictdebris", "deleteFalldeadCol", "deleteAirwallCol", "deleteGrindrail", "changeNewCol"},
        cyber_stage_no = 38,
        cyber_name = "4-H",
        mission = {"numberring", "silvermoonring", "mine", "animal"},
        ring_mission = 150,
        rank = {95, 98, 102, 108},
	rank_veryhard = {90, 92, 94, 98},
        rank_challenge = {405, 425, 445, 485},
        rank_challenge_all = {2093, 2218, 2343, 2593},
    },
    {
    --3rd Update Highway 06
        name  = "w9d23",
	stage = "w9d06",
        attrs = { "cyber","boarding", "pointcloud", "extra" ,"deleteFalldeadCol", "deleteAirwallCol", "deleteGrindrail","changeNewCol"},
        cyber_stage_no = 39,
        cyber_name = "4-I",
	cyber_mode= "low-gravity",
        mission = {"numberring", "silvermoonring", "hidegoal", "animal"},
        ring_mission = 50,
        rank = {85, 88, 92, 98},
	rank_veryhard = {80, 82, 84, 88},
        rank_challenge = {468, 503, 538, 608},
        rank_challenge_all = {468, 503, 538, 608},
    },

-- ここまで第３弾アップデート用電脳ステージ



    {
    -- ミニゲーム
        name     = "w1f01",
        world_no = 1,
        attrs    = { "minigame" , "navmesh" , "heightfield" , "pointcloud" },
    },
    {
    -- ハッキング 01
        name     = "w1h01",
        attrs    = { "hacking" , "pointcloud" },
    },
    {
    -- ハッキング 02
        name     = "w1h02",
        stage    = "w1h01",
        attrs    = { "hacking" , "pointcloud" },
    },
    {
    -- ハッキング 03
        name     = "w1h03",
        stage    = "w1h01",
        attrs    = { "hacking" , "pointcloud" },
    },
    {
    -- ハッキング test
        name     = "w1h99",
        stage    = "w1h01",
        attrs    = { "hacking" , "pointcloud" },
    },
    {
    -- THE END戦　宇宙空間
        name     = "w5r01",
        stage    = "w1h01",
        attrs    = { "hacking" , "pointcloud" },
    },

    -- バトルラッシュ 草原前半
    {
        name     = "w1b01",
        stage    = "w1r03",
        attrs    = { "navmesh", "heightfield", "autosave", "pointcloud", "battlerush" },
    },
    -- バトルラッシュ 砂漠
    {
        name     = "w2b01",
        stage    = "w2r01",
        attrs    = { "navmesh", "heightfield", "autosave", "pointcloud", "battlerush" },
    },
    -- バトルラッシュ 火山
    {
        name     = "w3b01",
        stage    = "w3r01",
        attrs    = { "navmesh", "heightfield", "autosave", "pointcloud", "lava", "battlerush" },
    },
    -- バトルラッシュ 草原前半
    {
        name     = "w1b02",
        stage    = "w1r04",
        attrs    = { "navmesh", "heightfield", "autosave", "pointcloud", "battlerush" },
    },

    -- 達人ココ試練1
    {
        name     = "w5t02",
        stage    = "w5t02",
        attrs    = { "pointcloud", "mastertrial" },
    },
    -- 達人ココ試練2
    {
        name     = "w5t03",
        stage    = "w5t02",
        attrs    = { "pointcloud", "mastertrial" },
    },
    -- 達人ココ試練3
    {
        name     = "w5t04",
        stage    = "w5t02",
        attrs    = { "pointcloud", "mastertrial" },
    },
    -- 達人ココ試練4
    {
        name     = "w5t05",
        stage    = "w5t02",
        attrs    = { "pointcloud", "mastertrial", "specialparryeffect" },
    },
    -- 達人王ココ試練 草原前半
    {
        name     = "w1t01",
        stage    = "w1r03",
        attrs    = { "navmesh", "heightfield", "autosave", "pointcloud", "bossrush" },
    },
    -- 達人王ココ試練 砂漠
    {
        name     = "w2t01",
        stage    = "w2r01",
        attrs    = { "navmesh", "heightfield", "autosave", "pointcloud", "bossrush" },
    },
    -- 達人王ココ試練 火山
    {
        name     = "w3t01",
        stage    = "w3r01",
        attrs    = { "navmesh", "heightfield", "autosave", "pointcloud", "lava", "bossrush" },
    },
}
