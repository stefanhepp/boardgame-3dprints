include <boardgame_insert_toolkit_lib.2.scad>;

// determines whether lids are output.
g_b_print_lid = true;

// determines whether boxes are output.
g_b_print_box = true;

// Focus on one box
g_isolated_print_box = "Cards";

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
            [ BOX_SIZE_XYZ,                                     [103, 62, 32.0] ],
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
                ]
            ],
            [ BOX_COMPONENT,
                [
                    [CMP_COMPARTMENT_SIZE_XYZ,  [ 31, 27, 30.0] ],
                    [CMP_NUM_COMPARTMENTS_XY,               [3,2] ],
                    [ CMP_CUTOUT_SIDES_4B, [ t, t, f, f] ],
                    [ CMP_CUTOUT_TYPE, EXTERIOR ],
                ]
            ],
        ]
    ],
    [   "Cards",
        [
            [ BOX_SIZE_XYZ,                                     [194.5, 99.5, 50.0] ],
            [ BOX_STACKABLE_B, t ],
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
                ]
            ],
            [ BOX_COMPONENT,
                [
                    [CMP_COMPARTMENT_SIZE_XYZ,  [ 61.5, 93.5, 48.0] ],
                    [CMP_NUM_COMPARTMENTS_XY,               [3,1] ],
                    [ CMP_CUTOUT_SIDES_4B, [ t, t, f, f] ],
                    [ CMP_CUTOUT_TYPE, EXTERIOR ],
                    [ CMP_CUTOUT_WIDTH_PCT, 60],
                ]
            ],
        ]
    ],
    [   "Setup",
        [
            [ BOX_SIZE_XYZ,                                     [64, 128.5, 50.0] ],
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
                            [ ROTATION, 90 ],
                        ]
                    ],
                ]
            ],
            [ BOX_COMPONENT,
                [
                    [CMP_COMPARTMENT_SIZE_XYZ,  [ 9, 38, 48.0] ],
                    [CMP_NUM_COMPARTMENTS_XY,               [3,1] ],
                    [ CMP_PADDING_HEIGHT_ADJUST_XY, [ -8, -8 ] ],
                    [ POSITION_XY, [0.5,MAX] ],
                    [ CMP_CUTOUT_SIDES_4B, [ t, t, t, t] ],
                    [ CMP_CUTOUT_HEIGHT_PCT, 30],
                    [ CMP_CUTOUT_TYPE, BOTH ],
                ]
            ],
            [ BOX_COMPONENT,
                [
                    [CMP_COMPARTMENT_SIZE_XYZ,  [ 9, 27, 48.0] ],
                    [CMP_NUM_COMPARTMENTS_XY,               [1,1] ],
                    [ CMP_PADDING_HEIGHT_ADJUST_XY, [ -3, -3 ] ],
                    [ POSITION_XY, [31.5,MAX] ],
                    [ CMP_CUTOUT_SIDES_4B, [ f, f, t, t] ],
                    [ CMP_CUTOUT_HEIGHT_PCT, 30],
                    [ CMP_CUTOUT_TYPE, BOTH ],
                ]
            ],
            [ BOX_COMPONENT,
                [
                    [CMP_COMPARTMENT_SIZE_XYZ,  [ 7, 27, 48.0] ],
                    [CMP_NUM_COMPARTMENTS_XY,               [1,1] ],
                    [ CMP_PADDING_HEIGHT_ADJUST_XY, [ -3, -3 ] ],
                    [ CMP_CUTOUT_SIDES_4B, [ f, f, t, t] ],
                    [ CMP_CUTOUT_HEIGHT_PCT, 30],
                    [ CMP_CUTOUT_TYPE, BOTH ],
                    [ POSITION_XY, [41.5,MAX] ]
                ]
            ],
            [ BOX_COMPONENT,
                [
                    [CMP_COMPARTMENT_SIZE_XYZ,  [ 5, 27, 48.0] ],
                    [CMP_NUM_COMPARTMENTS_XY,               [1,1] ],
                    [ CMP_PADDING_HEIGHT_ADJUST_XY, [ -3, -3 ] ],
                    [ CMP_CUTOUT_SIDES_4B, [ f, f, f, f] ],
                    [ CMP_CUTOUT_HEIGHT_PCT, 30],
                    [ CMP_CUTOUT_TYPE, BOTH ],
                    [ POSITION_XY, [49.5, MAX] ]
                ]
            ],
            [ BOX_COMPONENT,
                [
                    [CMP_COMPARTMENT_SIZE_XYZ,  [ 35, 84.5, 48.0] ],
                    [CMP_NUM_COMPARTMENTS_XY,               [1,1] ],
                    [ CMP_CUTOUT_SIDES_4B, [ f, f, f, f] ],
                    [ POSITION_XY, [0, 0] ]
                ]
            ],
            [ BOX_COMPONENT,
                [
                    [CMP_COMPARTMENT_SIZE_XYZ,  [ 24, 23, 40.0] ],
                    [CMP_NUM_COMPARTMENTS_XY,               [1, 4] ],
                    [ CMP_CUTOUT_SIDES_4B, [ f, f, f, f] ],
                    [ POSITION_XY, [MAX, 0] ],
                    [ CMP_SHAPE, FILLET ],
                ]
            ],
        ]
    ],
    [   "Resources",
        [
            [ BOX_SIZE_XYZ,                                     [103, 103, 50.0] ],
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
                ]
            ],
            [ BOX_COMPONENT,
                [
                    [CMP_COMPARTMENT_SIZE_XYZ,  [ 48.5, 48.5, 30.0] ],
                    [CMP_NUM_COMPARTMENTS_XY,               [2,2] ],
                    [ CMP_SHAPE, FILLET ],
                ]
            ],
        ]
    ],
];

MakeAll();

