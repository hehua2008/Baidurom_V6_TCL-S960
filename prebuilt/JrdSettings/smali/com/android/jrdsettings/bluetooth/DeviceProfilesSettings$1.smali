.class Lcom/android/jrdsettings/bluetooth/DeviceProfilesSettings$1;
.super Ljava/lang/Object;
.source "DeviceProfilesSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/jrdsettings/bluetooth/DeviceProfilesSettings;->askDisconnect(Landroid/content/Context;Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/bluetooth/DeviceProfilesSettings;

.field final synthetic val$device:Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;

.field final synthetic val$profile:Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfile;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/bluetooth/DeviceProfilesSettings;Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfile;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 297
    iput-object p1, p0, Lcom/android/jrdsettings/bluetooth/DeviceProfilesSettings$1;->this$0:Lcom/android/jrdsettings/bluetooth/DeviceProfilesSettings;

    iput-object p2, p0, Lcom/android/jrdsettings/bluetooth/DeviceProfilesSettings$1;->val$device:Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;

    iput-object p3, p0, Lcom/android/jrdsettings/bluetooth/DeviceProfilesSettings$1;->val$profile:Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/DeviceProfilesSettings$1;->val$device:Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;

    iget-object v1, p0, Lcom/android/jrdsettings/bluetooth/DeviceProfilesSettings$1;->val$profile:Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfile;

    invoke-virtual {v0, v1}, Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;->disconnect(Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfile;)V

    .line 300
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/DeviceProfilesSettings$1;->val$profile:Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfile;

    iget-object v1, p0, Lcom/android/jrdsettings/bluetooth/DeviceProfilesSettings$1;->val$device:Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfile;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 301
    return-void
.end method
