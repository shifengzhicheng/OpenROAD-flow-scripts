export DESIGN_NAME = gcd
export PLATFORM    = SKY130HD

export VERILOG_FILES = ./designs/src/$(DESIGN_NICKNAME)/gcd.v
export SDC_FILE      = ./designs/$(PLATFORM)/$(DESIGN_NICKNAME)/constraint.sdc

# These values must be multiples of placement site
export DIE_AREA    = 0 0 279.96 280.128
export CORE_AREA   = 9.996 10.08 269.964 270.048