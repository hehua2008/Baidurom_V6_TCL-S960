.class public Lcom/android/jrdsettings/SettingsPreferenceFragment;
.super Landroid/preference/PreferenceFragment;
.source "SettingsPreferenceFragment.java"

# interfaces
.implements Lcom/android/jrdsettings/DialogCreatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/jrdsettings/SettingsPreferenceFragment$SettingsDialogFragment;
    }
.end annotation


# static fields
.field protected static final DIALOG_ID_THEME_SWITCH:I = 0x64

.field private static final MENU_HELP:I = 0x65

.field private static final TAG:Ljava/lang/String; = "SettingsPreferenceFragment"

.field private static mDialogFragment:Lcom/android/jrdsettings/SettingsPreferenceFragment$SettingsDialogFragment;


# instance fields
.field private mHelpUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 245
    return-void
.end method

.method static synthetic access$200()Lcom/android/jrdsettings/SettingsPreferenceFragment$SettingsDialogFragment;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/android/jrdsettings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/jrdsettings/SettingsPreferenceFragment$SettingsDialogFragment;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/jrdsettings/SettingsPreferenceFragment$SettingsDialogFragment;)Lcom/android/jrdsettings/SettingsPreferenceFragment$SettingsDialogFragment;
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    sput-object p0, Lcom/android/jrdsettings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/jrdsettings/SettingsPreferenceFragment$SettingsDialogFragment;

    return-object p0
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 354
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 355
    return-void
.end method

.method public final finishFragment()V
    .locals 1

    .prologue
    .line 104
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 105
    return-void
.end method

.method protected getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 113
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 116
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method protected getNextButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 350
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/jrdsettings/ButtonBarHandler;

    invoke-interface {v0}, Lcom/android/jrdsettings/ButtonBarHandler;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method protected getPackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    .prologue
    .line 130
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method protected getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "name"

    .prologue
    .line 123
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected hasNextButton()Z
    .locals 1

    .prologue
    .line 346
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/jrdsettings/ButtonBarHandler;

    invoke-interface {v0}, Lcom/android/jrdsettings/ButtonBarHandler;->hasNextButton()Z

    move-result v0

    return v0
.end method

.method public isDialogShowing(I)Z
    .locals 3
    .parameter "dialogId"

    .prologue
    const/4 v1, 0x0

    .line 195
    sget-object v2, Lcom/android/jrdsettings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/jrdsettings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/jrdsettings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/jrdsettings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v2}, Lcom/android/jrdsettings/SettingsPreferenceFragment$SettingsDialogFragment;->getDialogId()I

    move-result v2

    if-eq v2, p1, :cond_1

    .line 204
    :cond_0
    :goto_0
    return v1

    .line 200
    :cond_1
    sget-object v2, Lcom/android/jrdsettings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/jrdsettings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v2}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 201
    .local v0, dialog:Landroid/app/Dialog;
    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 71
    iget-object v0, p0, Lcom/android/jrdsettings/SettingsPreferenceFragment;->mHelpUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 74
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 59
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getHelpResource()I

    move-result v0

    .line 63
    .local v0, helpResource:I
    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/jrdsettings/SettingsPreferenceFragment;->mHelpUrl:Ljava/lang/String;

    .line 66
    :cond_0
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "dialogId"

    .prologue
    .line 163
    packed-switch p1, :pswitch_data_0

    .line 169
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 165
    :pswitch_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 166
    .local v0, switchDialog:Landroid/app/ProgressDialog;
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090954

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 163
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v3, 0x0

    .line 93
    iget-object v1, p0, Lcom/android/jrdsettings/SettingsPreferenceFragment;->mHelpUrl:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 94
    const/16 v1, 0x65

    const v2, 0x7f090903

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 95
    .local v0, helpItem:Landroid/view/MenuItem;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/jrdsettings/SettingsPreferenceFragment;->mHelpUrl:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/android/jrdsettings/HelpUtils;->prepareHelpMenuItem(Landroid/content/Context;Landroid/view/MenuItem;Ljava/lang/String;)Z

    .line 97
    .end local v0           #helpItem:Landroid/view/MenuItem;
    :cond_0
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 135
    invoke-virtual {p0}, Landroid/app/Fragment;->isRemoving()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    sget-object v0, Lcom/android/jrdsettings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/jrdsettings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 137
    sget-object v0, Lcom/android/jrdsettings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/jrdsettings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 138
    const/4 v0, 0x0

    sput-object v0, Lcom/android/jrdsettings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/jrdsettings/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 141
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 142
    return-void
.end method

.method public onDialogShowing()V
    .locals 0

    .prologue
    .line 243
    return-void
.end method

.method protected removeDialog(I)V
    .locals 1
    .parameter "dialogId"

    .prologue
    .line 179
    sget-object v0, Lcom/android/jrdsettings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/jrdsettings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/jrdsettings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/jrdsettings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v0}, Lcom/android/jrdsettings/SettingsPreferenceFragment$SettingsDialogFragment;->getDialogId()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 181
    sget-object v0, Lcom/android/jrdsettings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/jrdsettings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 185
    const/4 v0, 0x0

    sput-object v0, Lcom/android/jrdsettings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/jrdsettings/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 187
    :cond_0
    return-void
.end method

.method protected removePreference(Ljava/lang/String;)V
    .locals 2
    .parameter "key"

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 78
    .local v0, pref:Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 81
    :cond_0
    return-void
.end method

.method protected setCancelable(Z)V
    .locals 1
    .parameter "cancelable"

    .prologue
    .line 214
    sget-object v0, Lcom/android/jrdsettings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/jrdsettings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 215
    sget-object v0, Lcom/android/jrdsettings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/jrdsettings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v0, p1}, Landroid/app/DialogFragment;->setCancelable(Z)V

    .line 217
    :cond_0
    return-void
.end method

.method protected setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 225
    sget-object v0, Lcom/android/jrdsettings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/jrdsettings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 226
    sget-object v0, Lcom/android/jrdsettings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/jrdsettings/SettingsPreferenceFragment$SettingsDialogFragment;

    #setter for: Lcom/android/jrdsettings/SettingsPreferenceFragment$SettingsDialogFragment;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;
    invoke-static {v0, p1}, Lcom/android/jrdsettings/SettingsPreferenceFragment$SettingsDialogFragment;->access$002(Lcom/android/jrdsettings/SettingsPreferenceFragment$SettingsDialogFragment;Landroid/content/DialogInterface$OnCancelListener;)Landroid/content/DialogInterface$OnCancelListener;

    .line 228
    :cond_0
    return-void
.end method

.method protected setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 236
    sget-object v0, Lcom/android/jrdsettings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/jrdsettings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 237
    sget-object v0, Lcom/android/jrdsettings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/jrdsettings/SettingsPreferenceFragment$SettingsDialogFragment;

    #setter for: Lcom/android/jrdsettings/SettingsPreferenceFragment$SettingsDialogFragment;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;
    invoke-static {v0, p1}, Lcom/android/jrdsettings/SettingsPreferenceFragment$SettingsDialogFragment;->access$102(Lcom/android/jrdsettings/SettingsPreferenceFragment$SettingsDialogFragment;Landroid/content/DialogInterface$OnDismissListener;)Landroid/content/DialogInterface$OnDismissListener;

    .line 239
    :cond_0
    return-void
.end method

.method protected showDialog(I)V
    .locals 3
    .parameter "dialogId"

    .prologue
    .line 147
    sget-object v0, Lcom/android/jrdsettings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/jrdsettings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_1

    .line 148
    const-string v0, "SettingsPreferenceFragment"

    const-string v1, "Old dialog fragment not null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    sget-object v0, Lcom/android/jrdsettings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/jrdsettings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v0}, Lcom/android/jrdsettings/SettingsPreferenceFragment$SettingsDialogFragment;->getDialogId()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 159
    :goto_0
    return-void

    .line 153
    :cond_0
    sget-object v0, Lcom/android/jrdsettings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/jrdsettings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v0}, Lcom/android/jrdsettings/SettingsPreferenceFragment$SettingsDialogFragment;->getDialogId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->removeDialog(I)V

    .line 157
    :cond_1
    new-instance v0, Lcom/android/jrdsettings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-direct {v0, p0, p1}, Lcom/android/jrdsettings/SettingsPreferenceFragment$SettingsDialogFragment;-><init>(Lcom/android/jrdsettings/DialogCreatable;I)V

    sput-object v0, Lcom/android/jrdsettings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/jrdsettings/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 158
    sget-object v0, Lcom/android/jrdsettings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/jrdsettings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z
    .locals 7
    .parameter "caller"
    .parameter "fragmentClass"
    .parameter "requestCode"
    .parameter "extras"

    .prologue
    .line 359
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Landroid/preference/PreferenceActivity;

    if-eqz v1, :cond_0

    .line 360
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 361
    .local v0, preferenceActivity:Landroid/preference/PreferenceActivity;
    const v3, 0x7f090361

    const/4 v4, 0x0

    move-object v1, p2

    move-object v2, p4

    move-object v5, p1

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 363
    const/4 v1, 0x1

    .line 368
    .end local v0           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :goto_0
    return v1

    .line 365
    :cond_0
    const-string v1, "SettingsPreferenceFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parent isn\'t PreferenceActivity, thus there\'s no way to launch the given Fragment (name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", requestCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z
    .locals 7
    .parameter "caller"
    .parameter "fragmentClass"
    .parameter "requestCode"
    .parameter "extras"
    .parameter "resID"

    .prologue
    .line 379
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Landroid/preference/PreferenceActivity;

    if-eqz v1, :cond_0

    .line 380
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 381
    .local v0, preferenceActivity:Landroid/preference/PreferenceActivity;
    const/4 v4, 0x0

    move-object v1, p2

    move-object v2, p4

    move v3, p5

    move-object v5, p1

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 383
    const/4 v1, 0x1

    .line 389
    .end local v0           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :goto_0
    return v1

    .line 385
    :cond_0
    const-string v1, "SettingsPreferenceFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parent isn\'t PreferenceActivity, thus there\'s no way to launch the given Fragment (name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", requestCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    const/4 v1, 0x0

    goto :goto_0
.end method
