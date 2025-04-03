#!/usr/bin/env bash

python run.py --module data.rule.generate --min_num_shapes 2 --num_samples 13535 13149 13316 \
    --rules_path dataset/rules-easy.json --num_workers 64 \
    --in_canvas_area_thres 1 \
    --polygon_shape_level 5 --line_shape_level 2 --ellipse_shape_level 3 --spiral_shape_level 1 \
    --polygon_tangent_line_level 0 --polygon_symmetric_level 0 --polygon_shared_edge_level 0 --polygon_diagonal_level 0
