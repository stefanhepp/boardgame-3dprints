include <boardgame_insert_toolkit_lib.2.scad>;

// determines whether lids are output.
g_b_print_lid = true;

// determines whether boxes are output.
g_b_print_box = false;

// Focus on one box
g_isolated_print_box = "Setup Items";

// Used to visualize how all of the boxes fit together.
g_b_visualization = false;

// this is the outer wall thickness.
//Default = 1.5mm
g_wall_thickness = 1.5;

// The tolerance value is extra space put between planes of the lid and box that fit together.
// Increase the tolerance to loosen the fit and decrease it to tighten it.
//
// Note that the tolerance is applied exclusively to the lid.
// So if the lid is too tight or too loose, change this value ( up for looser fit, down for tighter fit ) and
// you only need to reprint the lid.
//
// The exception is the stackable box, where the bottom of the box is the lid of the box below,
// in which case the tolerance also affects that box bottom.
//
g_tolerance = 0.15;

// This adjusts the position of the lid detents downward.
// The larger the value, the bigger the gap between the lid and the box.
g_tolerance_detents_pos = 0.1;

data =
[
    [   "Doors",
        [
            [ BOX_SIZE_XYZ,                                     [103, 62, 40.0] ],
            [ BOX_STACKABLE_B, f ],
            [ ENABLED_B, t ],
            [ BOX_LID,
                [
                    [ LID_SOLID_B, f],
                    [ LID_FIT_UNDER_B, f],
                    [ LABEL,
                        [
                            [ LBL_TEXT,     "Doors"],
                            [ LBL_SIZE,     AUTO ],
                        ]
                    ],
                    [ LID_STRIPE_WIDTH, 1.6 ],
                    [ LID_PATTERN_RADIUS,         7],        
                    [ LID_PATTERN_N1,               8 ],
                    [ LID_PATTERN_N2,               8 ],
                    [ LID_PATTERN_ANGLE,            22.5 ],
                    [ LID_PATTERN_ROW_OFFSET,       10 ],
                    [ LID_PATTERN_COL_OFFSET,       130 ],
                    [ LID_PATTERN_THICKNESS,        0.6 ]
                ]
            ],
            [ BOX_COMPONENT,
                [
                    [CMP_COMPARTMENT_SIZE_XYZ,  [ 31, 27, 38.0] ],
                    [CMP_NUM_COMPARTMENTS_XY,               [3,2] ],
                    [ CMP_CUTOUT_SIDES_4B, [ t, t, f, f] ],
                    [ CMP_CUTOUT_TYPE, EXTERIOR ],
                    [ CMP_CUTOUT_WIDTH_PCT, 60 ],
                ]
            ],
        ]
    ],
    [   "Cards",
        [
            [ BOX_SIZE_XYZ,                                     [131.5, 99.5, 40.0] ],
            [ BOX_STACKABLE_B, f ],
            [ ENABLED_B, t ],
            [ BOX_LID,
                [
                    [ LID_SOLID_B, f],
                    [ LID_FIT_UNDER_B, f],
                    [ LABEL,
                        [
                            [ LBL_TEXT,     "Cards"],
                            [ LBL_SIZE,     AUTO ],
                        ]
                    ],
                    [ LID_STRIPE_WIDTH, 1.6 ],
                    [ LID_PATTERN_RADIUS,         7],        
                    [ LID_PATTERN_N1,               8 ],
                    [ LID_PATTERN_N2,               8 ],
                    [ LID_PATTERN_ANGLE,            22.5 ],
                    [ LID_PATTERN_ROW_OFFSET,       10 ],
                    [ LID_PATTERN_COL_OFFSET,       130 ],
                    [ LID_PATTERN_THICKNESS,        0.6 ]
                ],
            ],
            [ BOX_COMPONENT,
                [
                    [CMP_COMPARTMENT_SIZE_XYZ,  [ 61.5, 93.5, 38.0] ],
                    [CMP_NUM_COMPARTMENTS_XY,               [2,1] ],
                    [ CMP_CUTOUT_SIDES_4B, [ t, f, f, f] ],
                    [ CMP_CUTOUT_TYPE, EXTERIOR ],
                    [ CMP_CUTOUT_WIDTH_PCT, 50],
                ],
            ],
        ]
    ],
    [   "Cards Expansion",
        [
            [ BOX_SIZE_XYZ,                                     [131.5, 99.5, 19.0] ],
            [ BOX_STACKABLE_B, f ],
            [ ENABLED_B, t ],
            [ BOX_LID,
                [
                    [ LID_SOLID_B, f],
                    [ LID_FIT_UNDER_B, f],
                    [ LABEL,
                        [
                            [ LBL_TEXT,     "Cards"],
                            [ LBL_SIZE,     AUTO ],
                        ]
                    ],
                    [ LID_STRIPE_WIDTH, 1.6 ],
                    [ LID_PATTERN_RADIUS,         7],        
                    [ LID_PATTERN_N1,               8 ],
                    [ LID_PATTERN_N2,               8 ],
                    [ LID_PATTERN_ANGLE,            22.5 ],
                    [ LID_PATTERN_ROW_OFFSET,       10 ],
                    [ LID_PATTERN_COL_OFFSET,       130 ],
                    [ LID_PATTERN_THICKNESS,        0.6 ]
                ]
            ],
            [ BOX_COMPONENT,
                [
                    [CMP_COMPARTMENT_SIZE_XYZ,  [ 61.5, 93.5, 17.0] ],
                    [CMP_NUM_COMPARTMENTS_XY,               [2,1] ],
                    [ CMP_CUTOUT_SIDES_4B, [ t, f, f, f] ],
                    [ CMP_CUTOUT_TYPE, EXTERIOR ],
                    [ CMP_CUTOUT_WIDTH_PCT, 50],
                ],
            ],
        ]
    ],    
    [   "Setup Cards",
        [
            [ BOX_SIZE_XYZ,                                     [120, 103, 15.0] ],
            [ BOX_STACKABLE_B, f ],
            [ ENABLED_B, t ],
            [ BOX_LID,
                [
                    [ LID_SOLID_B, f],
                    [ LID_FIT_UNDER_B, f],
                    [ LABEL,
                        [
                            [ LBL_TEXT,     "Setup"],
                            [ LBL_SIZE,     AUTO ],
                        ]
                    ],
                    [ LID_STRIPE_WIDTH, 1.6 ],
                    [ LID_PATTERN_RADIUS,         7],        
                    [ LID_PATTERN_N1,               8 ],
                    [ LID_PATTERN_N2,               8 ],
                    [ LID_PATTERN_ANGLE,            22.5 ],
                    [ LID_PATTERN_ROW_OFFSET,       10 ],
                    [ LID_PATTERN_COL_OFFSET,       130 ],
                    [ LID_PATTERN_THICKNESS,        0.6 ]
                ]
            ],
            // A,B,C
            [ BOX_COMPONENT,
                [
                    [CMP_COMPARTMENT_SIZE_XYZ,  [37.5, 48, 12.0] ],
                    [CMP_NUM_COMPARTMENTS_XY,               [3,1] ],
                    [ POSITION_XY, [0.5,0] ],
                    [ CMP_CUTOUT_SIDES_4B, [ t, f, f, f] ],
                ]
            ],
            // Player round cards
            [ BOX_COMPONENT,
                [
                    [CMP_COMPARTMENT_SIZE_XYZ,  [27, 46, 12.0] ],
                    [CMP_NUM_COMPARTMENTS_XY,               [3,1] ],
                    [ POSITION_XY, [0,MAX] ],
                    [ CMP_CUTOUT_SIDES_4B, [ f, t, f, f] ],
                    [ CMP_CUTOUT_WIDTH_PCT, 60],
                ]
            ],
            // 75/150/225 points counter
            [ BOX_COMPONENT,
                [
                    [CMP_COMPARTMENT_SIZE_XYZ,  [27, 23, 12.0] ],
                    [CMP_NUM_COMPARTMENTS_XY,               [1,2] ],
                    [ POSITION_XY, [MAX, MAX] ],
                    [ CMP_CUTOUT_SIDES_4B, [ f, f, f, t] ],
                    [ CMP_CUTOUT_WIDTH_PCT, 60],
                ]
            ],
        ]
    ],
    [   "Setup Items",
        [
            [ BOX_SIZE_XYZ,                                     [120, 103, 23.0] ],
            [ BOX_STACKABLE_B, f ],
            [ ENABLED_B, t ],
            [ BOX_LID,
                [
                    [ LID_SOLID_B, f],
                    [ LID_FIT_UNDER_B, f],
                    [ LABEL,
                        [
                            [ LBL_TEXT,     "Setup"],
                            [ LBL_SIZE,     AUTO ],
                        ]
                    ],
                    [ LID_STRIPE_WIDTH, 1.6 ],
                    [ LID_PATTERN_RADIUS,         7],        
                    [ LID_PATTERN_N1,               8 ],
                    [ LID_PATTERN_N2,               8 ],
                    [ LID_PATTERN_ANGLE,            22.5 ],
                    [ LID_PATTERN_ROW_OFFSET,       10 ],
                    [ LID_PATTERN_COL_OFFSET,       130 ],
                    [ LID_PATTERN_THICKNESS,        0.6 ]
                ]
            ],
            // 14 Dice
            [ BOX_COMPONENT,
                [
                    [CMP_COMPARTMENT_SIZE_XYZ,  [116.0, 46, 17.0] ],
                    [CMP_NUM_COMPARTMENTS_XY,               [1,1] ],
                    [ POSITION_XY, [0.5,0] ],
                    [ CMP_CUTOUT_SIDES_4B, [ f, f, t, t] ],
                    [ CMP_CUTOUT_HEIGHT_PCT, 30],
                ]
            ],
            // 4 x 6 Player tokens
            [ BOX_COMPONENT,
                [
                    [CMP_COMPARTMENT_SIZE_XYZ,  [20, 52, 21.0] ],
                    [CMP_NUM_COMPARTMENTS_XY,               [4,1] ],
                    [ POSITION_XY, [0,MAX] ],
                    [ CMP_CUTOUT_SIDES_4B, [ f, f, f, f] ],
                    [ CMP_CUTOUT_WIDTH_PCT, 60],
                ]
            ],
            // Emperor
            [ BOX_COMPONENT,
                [
                    [CMP_COMPARTMENT_SIZE_XYZ,  [31, 48, 21.0] ],
                    [CMP_NUM_COMPARTMENTS_XY,               [1,1] ],
                    [ POSITION_XY, [MAX, MAX] ],
                    [ CMP_CUTOUT_SIDES_4B, [ f, f, f, f] ],
                    [ CMP_CUTOUT_WIDTH_PCT, 60],
                ]
            ],
        ]
    ],
    [   "Resources Meeples",
        [
            [ BOX_SIZE_XYZ,                                     [120, 103, 19.0] ],
            [ BOX_STACKABLE_B, f ],
            [ ENABLED_B, t ],
            [ BOX_LID,
                [
                    [ LID_SOLID_B, f],
                    [ LID_FIT_UNDER_B, f],
                    [ LABEL,
                        [
                            [ LBL_TEXT,     "Resources"],
                            [ LBL_SIZE,     AUTO ],
                        ]
                    ],
                    [ LID_STRIPE_WIDTH, 1.6 ],
                    [ LID_PATTERN_RADIUS,         7],        
                    [ LID_PATTERN_N1,               8 ],
                    [ LID_PATTERN_N2,               8 ],
                    [ LID_PATTERN_ANGLE,            22.5 ],
                    [ LID_PATTERN_ROW_OFFSET,       10 ],
                    [ LID_PATTERN_COL_OFFSET,       130 ],
                    [ LID_PATTERN_THICKNESS,        0.6 ]
                ]
            ],
            [ BOX_COMPONENT,
                [
                    [CMP_COMPARTMENT_SIZE_XYZ,  [ 57.0, 48.5, 28.0] ],
                    [CMP_NUM_COMPARTMENTS_XY,               [2,2] ],
                    [ CMP_SHAPE, FILLET ],
                ]
            ],
        ]
    ],
    [   "Resources Cubes",
        [
            [ BOX_SIZE_XYZ,                                     [120, 103, 20.0] ],
            [ BOX_STACKABLE_B, f ],
            [ ENABLED_B, t ],
            [ BOX_LID,
                [
                    [ LID_SOLID_B, f],
                    [ LID_FIT_UNDER_B, f],
                    [ LABEL,
                        [
                            [ LBL_TEXT,     "Resources"],
                            [ LBL_SIZE,     AUTO ],
                        ]
                    ],
                    [ LID_STRIPE_WIDTH, 1.6 ],
                    [ LID_PATTERN_RADIUS,         7],        
                    [ LID_PATTERN_N1,               8 ],
                    [ LID_PATTERN_N2,               8 ],
                    [ LID_PATTERN_ANGLE,            22.5 ],
                    [ LID_PATTERN_ROW_OFFSET,       10 ],
                    [ LID_PATTERN_COL_OFFSET,       130 ],
                    [ LID_PATTERN_THICKNESS,        0.6 ]
                ]
            ],
            [ BOX_COMPONENT,
                [
                    [CMP_COMPARTMENT_SIZE_XYZ,  [ 80.0, 99.0, 18.0] ],
                    [CMP_NUM_COMPARTMENTS_XY,               [1,1] ],
                    [ POSITION_XY, [0, 0.5] ],
                    [ CMP_SHAPE, FILLET ],
                ]
            ],
            [ BOX_COMPONENT,
                [
                    [CMP_COMPARTMENT_SIZE_XYZ,  [ 34.0, 99.0, 18.0] ],
                    [CMP_NUM_COMPARTMENTS_XY,               [1,1] ],
                    [ POSITION_XY, [MAX, 0.5] ],
                    [ CMP_SHAPE, FILLET ],
                ]
            ],
        ]
    ],

];

MakeAll();

