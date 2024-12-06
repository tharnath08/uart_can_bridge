(globals
	version = 3
	io_order = default
)

(iopad

	(topleft
		(inst  name="corner0"	place_status=placed )	# Corner no: 1 (top left)
  	  )

	(topright
		(inst  name="corner1"	place_status=placed )	# Corner no: 2 (top right)
  	  )

	(bottomleft
		(inst  name="corner2"	place_status=placed )	# Corner no: 3 (bottom left)
  	  )

	(bottomright
		(inst  name="corner3"	place_status=placed )	# Corner no: 4 (bottom right)
  	  )

    (left
    (inst name="ser_tx_pad" place_status=fixed)
    (inst name="ser_rx_pad" place_status=fixed)
    
    )

    (top
    (inst name="clk_pad"    place_status=placed)
    (inst name="rbyte_pad"    place_status=fixed)
    (inst name="vdd0"       place_status=fixed)
    )

    (right

    (inst name="can_tx_pad" place_status=placed)
    (inst name="can_rx_pad" place_status=placed)

    )


    (bottom
    (inst name="vss0"       place_status=fixed)
    (inst name="tbyte_pad"    place_status=fixed)
    (inst name="rst_pad" place_status=placed)
    )


)
