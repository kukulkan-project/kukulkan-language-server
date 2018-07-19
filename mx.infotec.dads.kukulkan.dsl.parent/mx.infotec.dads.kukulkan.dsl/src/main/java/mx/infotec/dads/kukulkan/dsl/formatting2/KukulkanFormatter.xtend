/*
 * generated by Xtext 2.14.0
 */
package mx.infotec.dads.kukulkan.dsl.formatting2

import com.google.inject.Inject
import mx.infotec.dads.kukulkan.dsl.kukulkan.AssociationField
import mx.infotec.dads.kukulkan.dsl.kukulkan.CoreEntityAssociationField
import mx.infotec.dads.kukulkan.dsl.kukulkan.DomainModel
import mx.infotec.dads.kukulkan.dsl.kukulkan.Entity
import mx.infotec.dads.kukulkan.dsl.kukulkan.PrimitiveField
import mx.infotec.dads.kukulkan.dsl.services.KukulkanGrammarAccess
import org.eclipse.xtext.formatting.IIndentationInformation
import org.eclipse.xtext.formatting2.AbstractFormatter2
import org.eclipse.xtext.formatting2.FormatterPreferenceKeys
import org.eclipse.xtext.formatting2.FormatterRequest
import org.eclipse.xtext.formatting2.IFormattableDocument
import org.eclipse.xtext.preferences.MapBasedPreferenceValues

class KukulkanFormatter extends AbstractFormatter2 {

	@Inject extension KukulkanGrammarAccess

	@Inject IIndentationInformation indentationInformation

	override protected initialize(FormatterRequest request) {
		val preferences = request.preferences;
		if (preferences instanceof MapBasedPreferenceValues) {
			preferences.put(FormatterPreferenceKeys.indentation, indentationInformation.indentString)
		}
		super.initialize(request);
	}

	def dispatch void format(DomainModel domainModel, extension IFormattableDocument document) {
		for (entity : domainModel.entities) {
			entity.format
		}
	}

	def dispatch void format(Entity entity, extension IFormattableDocument document) {
		entity.regionFor.ruleCall(entityAccess.LBRACETerminalRuleCall_3_0).prepend[oneSpace]
		entity.regionFor.ruleCall(entityAccess.RBRACETerminalRuleCall_3_2).prepend[newLine]
		interior(
			entity.regionFor.ruleCall(entityAccess.LBRACETerminalRuleCall_3_0),
			entity.regionFor.ruleCall(entityAccess.RBRACETerminalRuleCall_3_2)
		)[indent]
		for (entityField : entity.fields) {
			entityField.format
		}
	}

	def dispatch void format(PrimitiveField primitiveField, extension IFormattableDocument document) {
		primitiveField.prepend[newLine]
		primitiveField.regionFor.ruleCall(primitiveFieldAccess.SEMICOLONTerminalRuleCall_2).surround[oneSpace]
	}

	def dispatch void format(AssociationField associationField, extension IFormattableDocument document) {
		associationField.prepend[newLine]
		associationField.regionFor.ruleCall(associationFieldAccess.SEMICOLONTerminalRuleCall_3).surround[oneSpace]
	}

	def dispatch void format(CoreEntityAssociationField coreEntityAssociationField,
		extension IFormattableDocument document) {
		coreEntityAssociationField.prepend[newLine]
		coreEntityAssociationField.regionFor.ruleCall(coreEntityAssociationFieldAccess.SEMICOLONTerminalRuleCall_2).
			surround[oneSpace]
	}

// TODO: implement for StringFieldType, NumericFieldType, BlobFieldType, StringValidators, NumericValidators, BlobValidators
}
