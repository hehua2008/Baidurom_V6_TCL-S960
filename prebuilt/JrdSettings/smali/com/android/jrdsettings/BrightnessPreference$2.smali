.class Lcom/android/jrdsettings/BrightnessPreference$2;
.super Landroid/database/ContentObserver;
.source "BrightnessPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/BrightnessPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/BrightnessPreference;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/BrightnessPreference;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/jrdsettings/BrightnessPreference$2;->this$0:Lcom/android/jrdsettings/BrightnessPreference;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/jrdsettings/BrightnessPreference$2;->this$0:Lcom/android/jrdsettings/BrightnessPreference;

    #calls: Lcom/android/jrdsettings/BrightnessPreference;->onBrightnessModeChanged()V
    invoke-static {v0}, Lcom/android/jrdsettings/BrightnessPreference;->access$100(Lcom/android/jrdsettings/BrightnessPreference;)V

    .line 118
    return-void
.end method
