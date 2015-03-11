package feathers.examples.mxml.memento.interfaces
{
	import feathers.examples.mxml.memento.Memento;
	/**
	 * @author yangboz
	 */
	public interface IMemento
	{
		function setMemento( memento : Memento ) : void
		function makeMemento() : Memento
	}
}