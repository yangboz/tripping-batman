package feathers.examples.mxml.memento.util
{
   import feathers.examples.mxml.memento.Memento;
   import feathers.examples.mxml.memento.interfaces.IMemento;
   import feathers.examples.mxml.memento.namespaces.originatorOnly;

   import flash.errors.IllegalOperationError;
   import flash.text.TextField;

   /**
    * @author yangboz
    */
   public class FormField extends TextField implements IMemento
   {
      use namespace originatorOnly
      public function FormField()
      {
      }

      public function setMemento( memento : Memento ) : void
      {
         this.text = memento.string
         this.setSelection( memento.cursor , memento.cursor )
      }

      final public function makeMemento() : Memento
      {
         var memento : Memento = doMakeMemento()
         memento.string = this.text
         memento.cursor = this.caretIndex
         return memento
      }

      protected function doMakeMemento() : Memento
      {
         throw new IllegalOperationError( 'doMakeMomento must be overridden' )
         return null
      }
   }
}
