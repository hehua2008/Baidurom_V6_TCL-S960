.class Lcom/android/jrdsettings/audioshare/AudioShareSettingPreference$1;
.super Ljava/lang/Object;
.source "AudioShareSettingPreference.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/jrdsettings/audioshare/AudioShareSettingPreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/audioshare/AudioShareSettingPreference;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/audioshare/AudioShareSettingPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettingPreference$1;->this$0:Lcom/android/jrdsettings/audioshare/AudioShareSettingPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 3
    .parameter "group"
    .parameter "checkedId"

    .prologue
    const/4 v2, 0x0

    .line 52
    const v0, 0x7f0b0025

    if-ne p2, v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettingPreference$1;->this$0:Lcom/android/jrdsettings/audioshare/AudioShareSettingPreference;

    #getter for: Lcom/android/jrdsettings/audioshare/AudioShareSettingPreference;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/AudioShareSettingPreference;->access$000(Lcom/android/jrdsettings/audioshare/AudioShareSettingPreference;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "button1"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 59
    :goto_0
    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettingPreference$1;->this$0:Lcom/android/jrdsettings/audioshare/AudioShareSettingPreference;

    #getter for: Lcom/android/jrdsettings/audioshare/AudioShareSettingPreference;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/AudioShareSettingPreference;->access$000(Lcom/android/jrdsettings/audioshare/AudioShareSettingPreference;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "button2"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
