.class Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController$DlnaEventListener;
.super Ljava/lang/Object;
.source "DlnaDeviceController.java"

# interfaces
.implements Lorg/cybergarage/upnp/event/EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DlnaEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;


# direct methods
.method private constructor <init>(Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;)V
    .locals 0
    .parameter

    .prologue
    .line 422
    iput-object p1, p0, Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController$DlnaEventListener;->this$0:Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 422
    invoke-direct {p0, p1}, Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController$DlnaEventListener;-><init>(Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;)V

    return-void
.end method


# virtual methods
.method public eventNotifyReceived(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "uuid"
    .parameter "seq"
    .parameter "varName"
    .parameter "value"

    .prologue
    .line 428
    return-void
.end method
