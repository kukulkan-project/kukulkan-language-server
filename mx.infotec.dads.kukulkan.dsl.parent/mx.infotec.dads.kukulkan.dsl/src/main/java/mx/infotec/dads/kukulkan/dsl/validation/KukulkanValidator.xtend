/*
 * generated by Xtext 2.14.0
 */
package mx.infotec.dads.kukulkan.dsl.validation

import org.eclipse.xtext.validation.Check
import mx.infotec.dads.kukulkan.dsl.kukulkan.Entity
import mx.infotec.dads.kukulkan.dsl.kukulkan.KukulkanPackage
import mx.infotec.dads.kukulkan.dsl.kukulkan.EntityField
import mx.infotec.dads.kukulkan.dsl.kukulkan.DomainModel

/**
 * This class contains custom validation rules. 
 * 
 * See https://www.eclipse.org/Xtext/documentation/303_runtime_concepts.html#validation
 */
class KukulkanValidator extends AbstractKukulkanValidator {

	@Check
	def checkNameStartsWithUpperCase(Entity entity) {
		if (!Character.isUpperCase(entity.name.charAt(0))) {
			warning('Name should start with a capital', KukulkanPackage.Literals.ENTITY__NAME, 'invalidName')
		}
	}

	@Check
	def checkTableNameStartsWithLowerCase(Entity entity) {
		if (Character.isUpperCase(entity.tableName.charAt(0))) {
			warning('Name should start with a lower case', KukulkanPackage.Literals.ENTITY__TABLE_NAME, 'invalidName')
		}
	}

	@Check
	def checkFieldNameIsUniqueInEntity(EntityField field) {
		val entity = field.eContainer as Entity
		for (otherField : entity.fields) {
			if (otherField.id.equals(field.id) && otherField != field) {
				error('Duplicated field name', KukulkanPackage.Literals.ENTITY_FIELD__ID, 'duplicatedFieldName')
			}
		}
	}

	@Check
	def checkEntityNameIsUniqueInModel(Entity entity) {
		val domainModel = entity.eContainer as DomainModel
		for (extEntity : domainModel.entities) {
			if (extEntity.name.equals(entity.name) && extEntity != entity) {
				error('Duplicated entity name', KukulkanPackage.Literals.ENTITY__NAME, 'duplicatedEntityName')
			}
		}
	}

	@Check
	def checkTableNameIsUniqueInModel(Entity entity) {
		val domainModel = entity.eContainer as DomainModel
		for (otherEntity : domainModel.entities) {
			if (otherEntity.tableName.equals(entity.tableName) && otherEntity != entity) {
				error('Duplicated table name', KukulkanPackage.Literals.ENTITY__TABLE_NAME, 'duplicatedTableName')
			}
		}
	}

}
