/// @description create_sfq(mb,sfq)
/// @param mb
/// @param sfq
function create_sfq(mb,sfq) 
{
	mb.sfq=instance_create_depth(mb.x,mb.y,-100,sfq)
	mb.sfq.fat=mb
	return mb.sfq;
}
