/*
 * generated by Xtext 2.14.0
 */
package mx.infotec.dads.kukulkan.dsl


/**
 * Initialization support for running Xtext languages without Equinox extension registry.
 */
class KukulkanStandaloneSetup extends KukulkanStandaloneSetupGenerated {

	def static void doSetup() {
		new KukulkanStandaloneSetup().createInjectorAndDoEMFRegistration()
	}
}
