.class Lcom/android/jrdsettings/deviceinfo/Status$4;
.super Landroid/telephony/PhoneStateListener;
.source "Status.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/deviceinfo/Status;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/deviceinfo/Status;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/deviceinfo/Status;)V
    .locals 0
    .parameter

    .prologue
    .line 245
    iput-object p1, p0, Lcom/android/jrdsettings/deviceinfo/Status$4;->this$0:Lcom/android/jrdsettings/deviceinfo/Status;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 1
    .parameter "signalStrength"

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/jrdsettings/deviceinfo/Status$4;->this$0:Lcom/android/jrdsettings/deviceinfo/Status;

    invoke-virtual {v0}, Lcom/android/jrdsettings/deviceinfo/Status;->updateSignalStrength()V

    .line 249
    return-void
.end method
