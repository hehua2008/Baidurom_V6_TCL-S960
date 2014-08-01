.class Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController$DlnaNotifyListener;
.super Ljava/lang/Object;
.source "DlnaDeviceController.java"

# interfaces
.implements Lorg/cybergarage/upnp/device/NotifyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DlnaNotifyListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;


# direct methods
.method private constructor <init>(Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;)V
    .locals 0
    .parameter

    .prologue
    .line 431
    iput-object p1, p0, Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController$DlnaNotifyListener;->this$0:Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 431
    invoke-direct {p0, p1}, Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController$DlnaNotifyListener;-><init>(Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;)V

    return-void
.end method


# virtual methods
.method public deviceNotifyReceived(Lorg/cybergarage/upnp/ssdp/SSDPPacket;)V
    .locals 0
    .parameter "ssdpPacket"

    .prologue
    .line 436
    return-void
.end method
