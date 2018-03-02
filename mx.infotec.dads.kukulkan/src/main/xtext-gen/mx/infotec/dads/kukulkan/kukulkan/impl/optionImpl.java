/**
 * generated by Xtext 2.13.0
 */
package mx.infotec.dads.kukulkan.kukulkan.impl;

import mx.infotec.dads.kukulkan.kukulkan.KukulkanPackage;
import mx.infotec.dads.kukulkan.kukulkan.option;

import org.eclipse.emf.common.notify.Notification;

import org.eclipse.emf.ecore.EClass;

import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;

/**
 * <!-- begin-user-doc -->
 * An implementation of the model object '<em><b>option</b></em>'.
 * <!-- end-user-doc -->
 * <p>
 * The following features are implemented:
 * </p>
 * <ul>
 *   <li>{@link mx.infotec.dads.kukulkan.kukulkan.impl.optionImpl#getSetting <em>Setting</em>}</li>
 * </ul>
 *
 * @generated
 */
public class optionImpl extends MinimalEObjectImpl.Container implements option
{
  /**
   * The default value of the '{@link #getSetting() <em>Setting</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getSetting()
   * @generated
   * @ordered
   */
  protected static final String SETTING_EDEFAULT = null;

  /**
   * The cached value of the '{@link #getSetting() <em>Setting</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getSetting()
   * @generated
   * @ordered
   */
  protected String setting = SETTING_EDEFAULT;

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  protected optionImpl()
  {
    super();
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  protected EClass eStaticClass()
  {
    return KukulkanPackage.Literals.OPTION;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public String getSetting()
  {
    return setting;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void setSetting(String newSetting)
  {
    String oldSetting = setting;
    setting = newSetting;
    if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, KukulkanPackage.OPTION__SETTING, oldSetting, setting));
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public Object eGet(int featureID, boolean resolve, boolean coreType)
  {
    switch (featureID)
    {
      case KukulkanPackage.OPTION__SETTING:
        return getSetting();
    }
    return super.eGet(featureID, resolve, coreType);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public void eSet(int featureID, Object newValue)
  {
    switch (featureID)
    {
      case KukulkanPackage.OPTION__SETTING:
        setSetting((String)newValue);
        return;
    }
    super.eSet(featureID, newValue);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public void eUnset(int featureID)
  {
    switch (featureID)
    {
      case KukulkanPackage.OPTION__SETTING:
        setSetting(SETTING_EDEFAULT);
        return;
    }
    super.eUnset(featureID);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public boolean eIsSet(int featureID)
  {
    switch (featureID)
    {
      case KukulkanPackage.OPTION__SETTING:
        return SETTING_EDEFAULT == null ? setting != null : !SETTING_EDEFAULT.equals(setting);
    }
    return super.eIsSet(featureID);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public String toString()
  {
    if (eIsProxy()) return super.toString();

    StringBuffer result = new StringBuffer(super.toString());
    result.append(" (setting: ");
    result.append(setting);
    result.append(')');
    return result.toString();
  }

} //optionImpl
