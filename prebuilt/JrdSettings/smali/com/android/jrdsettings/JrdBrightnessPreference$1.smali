.class Lcom/android/jrdsettings/JrdBrightnessPreference$1;
.super Landroid/database/ContentObserver;
.source "JrdBrightnessPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/JrdBrightnessPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/JrdBrightnessPreference;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/JrdBrightnessPreference;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/jrdsettings/JrdBrightnessPreference$1;->this$0:Lcom/android/jrdsettings/JrdBrightnessPreference;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/jrdsettings/JrdBrightnessPreference$1;->this$0:Lcom/android/jrdsettings/JrdBrightnessPreference;

    #calls: Lcom/android/jrdsettings/JrdBrightnessPreference;->onBrightnessChanged()V
    invoke-static {v0}, Lcom/android/jrdsettings/JrdBrightnessPreference;->access$000(Lcom/android/jrdsettings/JrdBrightnessPreference;)V

    .line 113
    return-void
.end method
