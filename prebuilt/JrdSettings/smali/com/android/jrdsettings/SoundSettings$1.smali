.class Lcom/android/jrdsettings/SoundSettings$1;
.super Landroid/os/Handler;
.source "SoundSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/SoundSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/SoundSettings;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/SoundSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 182
    iput-object p1, p0, Lcom/android/jrdsettings/SoundSettings$1;->this$0:Lcom/android/jrdsettings/SoundSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 184
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 187
    :pswitch_0
    iget-object v0, p0, Lcom/android/jrdsettings/SoundSettings$1;->this$0:Lcom/android/jrdsettings/SoundSettings;

    iget-object v2, p0, Lcom/android/jrdsettings/SoundSettings$1;->this$0:Lcom/android/jrdsettings/SoundSettings;

    #getter for: Lcom/android/jrdsettings/SoundSettings;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/jrdsettings/SoundSettings;->access$000(Lcom/android/jrdsettings/SoundSettings;)Landroid/content/Context;

    move-result-object v2

    #calls: Lcom/android/jrdsettings/SoundSettings;->updateRingtoneName(ILandroid/content/Context;I)V
    invoke-static {v0, v1, v2, v1}, Lcom/android/jrdsettings/SoundSettings;->access$100(Lcom/android/jrdsettings/SoundSettings;ILandroid/content/Context;I)V

    goto :goto_0

    .line 192
    :pswitch_1
    iget-object v0, p0, Lcom/android/jrdsettings/SoundSettings$1;->this$0:Lcom/android/jrdsettings/SoundSettings;

    #getter for: Lcom/android/jrdsettings/SoundSettings;->mRingtonePreference:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/jrdsettings/SoundSettings;->access$200(Lcom/android/jrdsettings/SoundSettings;)Landroid/preference/Preference;

    move-result-object v3

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 193
    iget-object v0, p0, Lcom/android/jrdsettings/SoundSettings$1;->this$0:Lcom/android/jrdsettings/SoundSettings;

    #getter for: Lcom/android/jrdsettings/SoundSettings;->mRingtonePreference:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/jrdsettings/SoundSettings;->access$200(Lcom/android/jrdsettings/SoundSettings;)Landroid/preference/Preference;

    move-result-object v3

    iget-object v0, p0, Lcom/android/jrdsettings/SoundSettings$1;->this$0:Lcom/android/jrdsettings/SoundSettings;

    #getter for: Lcom/android/jrdsettings/SoundSettings;->mSilentRingtone:Z
    invoke-static {v0}, Lcom/android/jrdsettings/SoundSettings;->access$300(Lcom/android/jrdsettings/SoundSettings;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    .line 196
    :pswitch_2
    iget-object v0, p0, Lcom/android/jrdsettings/SoundSettings$1;->this$0:Lcom/android/jrdsettings/SoundSettings;

    #getter for: Lcom/android/jrdsettings/SoundSettings;->mNotificationPreference:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/jrdsettings/SoundSettings;->access$400(Lcom/android/jrdsettings/SoundSettings;)Landroid/preference/Preference;

    move-result-object v3

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v0, p0, Lcom/android/jrdsettings/SoundSettings$1;->this$0:Lcom/android/jrdsettings/SoundSettings;

    #getter for: Lcom/android/jrdsettings/SoundSettings;->mNotificationPreference:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/jrdsettings/SoundSettings;->access$400(Lcom/android/jrdsettings/SoundSettings;)Landroid/preference/Preference;

    move-result-object v0

    iget-object v3, p0, Lcom/android/jrdsettings/SoundSettings$1;->this$0:Lcom/android/jrdsettings/SoundSettings;

    #getter for: Lcom/android/jrdsettings/SoundSettings;->mSilentRingtone:Z
    invoke-static {v3}, Lcom/android/jrdsettings/SoundSettings;->access$300(Lcom/android/jrdsettings/SoundSettings;)Z

    move-result v3

    if-nez v3, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_2

    .line 201
    :pswitch_3
    iget-object v0, p0, Lcom/android/jrdsettings/SoundSettings$1;->this$0:Lcom/android/jrdsettings/SoundSettings;

    #getter for: Lcom/android/jrdsettings/SoundSettings;->mPowerOn:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/jrdsettings/SoundSettings;->access$500(Lcom/android/jrdsettings/SoundSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 202
    iget-object v0, p0, Lcom/android/jrdsettings/SoundSettings$1;->this$0:Lcom/android/jrdsettings/SoundSettings;

    #getter for: Lcom/android/jrdsettings/SoundSettings;->mPowerOn:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/jrdsettings/SoundSettings;->access$500(Lcom/android/jrdsettings/SoundSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    iget-object v3, p0, Lcom/android/jrdsettings/SoundSettings$1;->this$0:Lcom/android/jrdsettings/SoundSettings;

    #getter for: Lcom/android/jrdsettings/SoundSettings;->mEnablePowerOnRingtone:Z
    invoke-static {v3}, Lcom/android/jrdsettings/SoundSettings;->access$600(Lcom/android/jrdsettings/SoundSettings;)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 203
    iget-object v0, p0, Lcom/android/jrdsettings/SoundSettings$1;->this$0:Lcom/android/jrdsettings/SoundSettings;

    #getter for: Lcom/android/jrdsettings/SoundSettings;->mPowerOn:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/jrdsettings/SoundSettings;->access$500(Lcom/android/jrdsettings/SoundSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    iget-object v0, p0, Lcom/android/jrdsettings/SoundSettings$1;->this$0:Lcom/android/jrdsettings/SoundSettings;

    #getter for: Lcom/android/jrdsettings/SoundSettings;->mSilentRingtone:Z
    invoke-static {v0}, Lcom/android/jrdsettings/SoundSettings;->access$300(Lcom/android/jrdsettings/SoundSettings;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 205
    :cond_3
    iget-object v0, p0, Lcom/android/jrdsettings/SoundSettings$1;->this$0:Lcom/android/jrdsettings/SoundSettings;

    #getter for: Lcom/android/jrdsettings/SoundSettings;->mPowerOff:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/jrdsettings/SoundSettings;->access$700(Lcom/android/jrdsettings/SoundSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/android/jrdsettings/SoundSettings$1;->this$0:Lcom/android/jrdsettings/SoundSettings;

    #getter for: Lcom/android/jrdsettings/SoundSettings;->mPowerOff:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/jrdsettings/SoundSettings;->access$700(Lcom/android/jrdsettings/SoundSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    iget-object v3, p0, Lcom/android/jrdsettings/SoundSettings$1;->this$0:Lcom/android/jrdsettings/SoundSettings;

    #getter for: Lcom/android/jrdsettings/SoundSettings;->mEnablePowerOffRingtone:Z
    invoke-static {v3}, Lcom/android/jrdsettings/SoundSettings;->access$800(Lcom/android/jrdsettings/SoundSettings;)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 207
    iget-object v0, p0, Lcom/android/jrdsettings/SoundSettings$1;->this$0:Lcom/android/jrdsettings/SoundSettings;

    #getter for: Lcom/android/jrdsettings/SoundSettings;->mPowerOff:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/jrdsettings/SoundSettings;->access$700(Lcom/android/jrdsettings/SoundSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    iget-object v3, p0, Lcom/android/jrdsettings/SoundSettings$1;->this$0:Lcom/android/jrdsettings/SoundSettings;

    #getter for: Lcom/android/jrdsettings/SoundSettings;->mSilentRingtone:Z
    invoke-static {v3}, Lcom/android/jrdsettings/SoundSettings;->access$300(Lcom/android/jrdsettings/SoundSettings;)Z

    move-result v3

    if-nez v3, :cond_5

    :goto_4
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_4
    move v0, v2

    .line 203
    goto :goto_3

    :cond_5
    move v1, v2

    .line 207
    goto :goto_4

    .line 184
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method
