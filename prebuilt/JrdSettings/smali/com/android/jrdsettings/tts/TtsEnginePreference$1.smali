.class Lcom/android/jrdsettings/tts/TtsEnginePreference$1;
.super Ljava/lang/Object;
.source "TtsEnginePreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/tts/TtsEnginePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/tts/TtsEnginePreference;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/tts/TtsEnginePreference;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/jrdsettings/tts/TtsEnginePreference$1;->this$0:Lcom/android/jrdsettings/tts/TtsEnginePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/jrdsettings/tts/TtsEnginePreference$1;->this$0:Lcom/android/jrdsettings/tts/TtsEnginePreference;

    #calls: Lcom/android/jrdsettings/tts/TtsEnginePreference;->onRadioButtonClicked(Landroid/widget/CompoundButton;Z)V
    invoke-static {v0, p1, p2}, Lcom/android/jrdsettings/tts/TtsEnginePreference;->access$000(Lcom/android/jrdsettings/tts/TtsEnginePreference;Landroid/widget/CompoundButton;Z)V

    .line 91
    return-void
.end method
