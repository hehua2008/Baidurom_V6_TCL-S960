.class Lcom/android/jrdsettings/bluetooth/BluetoothDevicePreference$1;
.super Ljava/lang/Object;
.source "BluetoothDevicePreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/jrdsettings/bluetooth/BluetoothDevicePreference;->askDisconnect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/bluetooth/BluetoothDevicePreference;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/bluetooth/BluetoothDevicePreference;)V
    .locals 0
    .parameter

    .prologue
    .line 199
    iput-object p1, p0, Lcom/android/jrdsettings/bluetooth/BluetoothDevicePreference$1;->this$0:Lcom/android/jrdsettings/bluetooth/BluetoothDevicePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/BluetoothDevicePreference$1;->this$0:Lcom/android/jrdsettings/bluetooth/BluetoothDevicePreference;

    #getter for: Lcom/android/jrdsettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;
    invoke-static {v0}, Lcom/android/jrdsettings/bluetooth/BluetoothDevicePreference;->access$000(Lcom/android/jrdsettings/bluetooth/BluetoothDevicePreference;)Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;->disconnect()V

    .line 202
    return-void
.end method
