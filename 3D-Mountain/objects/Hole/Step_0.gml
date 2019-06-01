switch(image_index) {
	case 0:
	case 4:
		hspeed = inispd;
		break;
	case 1:
	case 3:
		hspeed = 6*inispd;
		break;
	case 2:
		hspeed = 12*inispd;
		break;
	default:
		break;
}