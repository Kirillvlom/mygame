<?
class View
{
	//public $template_view; // здесь можно указать общий вид по умолчанию.
	
	function generate($content_view, $template_view, $nameSite = null,$data = null)
	{
			include 'app/views/'.$template_view;
			include 'app/views/'.$content_view;
	}
}