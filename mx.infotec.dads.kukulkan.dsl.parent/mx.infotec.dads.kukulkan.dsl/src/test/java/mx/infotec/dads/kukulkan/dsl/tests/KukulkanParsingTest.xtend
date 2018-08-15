/*
 * generated by Xtext 2.13.0
 */
package mx.infotec.dads.kukulkan.dsl.tests

import com.google.inject.Inject
import mx.infotec.dads.kukulkan.dsl.kukulkan.DomainModel
import org.eclipse.xtext.testing.InjectWith
import org.eclipse.xtext.testing.XtextRunner
import org.eclipse.xtext.testing.util.ParseHelper
import org.eclipse.xtext.testing.validation.ValidationTestHelper
import org.junit.Assert
import org.junit.Test
import org.junit.runner.RunWith

@RunWith(XtextRunner)
@InjectWith(KukulkanInjectorProvider)
class KukulkanParsingTest {
	@Inject
	ParseHelper<DomainModel> parseHelper

	@Inject
	ValidationTestHelper validationTestHelper

	@Test
	def void parseDomainModel() {
		val model = parseHelper.parse('''
			entity Persona (usuarios){
			    nombre : String required min(3) max(50) pattern("persona"),
			    edad : Integer required,
			    -> numero : Long,
			    sueldo : BigDecimal,
			    impuesto : Float,
			    impuestoDetalle : Double,
			    activo : Boolean,
			    fechaLocalDate : LocalDate,
			    fechaZoneDateTime : ZonedDateTime,
			    imagen : Blob,
			    imagenAnyBlob : AnyBlob,
			    imagenBlob : ImageBlob,
			    desc : TextBlob,
			    instante : Instant
			}
			views{}
		''')
		val entity = model.entities.head
		println(validationTestHelper.validate(model));
		Assert.assertEquals(entity.name, 'Persona')
	}
}
