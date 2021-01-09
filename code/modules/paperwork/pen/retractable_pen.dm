/obj/item/pen/retractable
	desc = "It's a retractable pen."
	icon_state = "pen" //for map visibility
	active = FALSE
	icon = 'icons/obj/items/pens/pen_retractable.dmi'

/obj/item/pen/retractable/blue
	icon_state = "pen_blue"
	colour = "blue"
	color_description = "blue ink"
	icon = 'icons/obj/items/pens/pen_retractable_blue.dmi'

/obj/item/pen/retractable/red
	icon_state = "pen_red"
	colour = "red"
	color_description = "red ink"
	icon = 'icons/obj/items/pens/pen_retractable_red.dmi'

/obj/item/pen/retractable/green
	icon_state = "pen_green"
	colour = "green"
	color_description = "green ink"
	icon = 'icons/obj/items/pens/pen_retractable_green.dmi'

/obj/item/pen/retractable/Initialize()
	. = ..()
	desc = "It's a retractable [color_description] pen."

/obj/item/pen/retractable/on_update_icon()
	icon_state = initial(icon_state)
	if(active)
		icon_state = "[icon_state]-on"

/obj/item/pen/retractable/attack(atom/A, mob/user, target_zone)
	if(!active)
		toggle()
	..()

/obj/item/pen/retractable/attack_self(mob/user)
	toggle()

/obj/item/pen/retractable/toggle()
	active = !active
	playsound(src, 'sound/items/penclick.ogg', 5, 0, -4)
	update_icon()
