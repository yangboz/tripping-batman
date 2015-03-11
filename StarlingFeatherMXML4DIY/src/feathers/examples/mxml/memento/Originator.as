package feathers.examples.mxml.memento
{
   import feathers.examples.mxml.memento.namespaces.originatorOnly;
   import feathers.examples.mxml.memento.util.FormField;

   /**
    * @author yangboz
    */
   public class Originator extends FormField
   {
      use namespace originatorOnly
      public function Originator()
      {
         super();
      }

      override protected function doMakeMemento() : Memento
      {
         var memento : Memento = new Memento()
         return memento
      }
   }
}
