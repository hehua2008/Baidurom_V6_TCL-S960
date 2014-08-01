.class Lcom/android/jrdsettings/BrightnessPreference$1;
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
    .line 104
    iput-object p1, p0, Lcom/android/jrdsettings/BrightnessPreference$1;->this$0:Lcom/android/jrdsettings/BrightnessPreference;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/jrdsettings/BrightnessPreference$1;->this$0:Lcom/android/jrdsettings/BrightnessPreference;

    #calls: Lcom/android/jrdsettings/BrightnessPreference;->onBrightnessChanged()V
    invoke-static {v0}, Lcom/android/jrdsettings/BrightnessPreference;->access$000(Lcom/android/jrdsettings/BrightnessPreference;)V

    .line 111
    return-void
.end method
