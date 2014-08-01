.class Lcom/mediatek/nfc/SecurityItemPreference;
.super Landroid/preference/Preference;
.source "CardEmulationSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "SecurityItemPreference"


# instance fields
.field private mChecked:Z

.field private mPreferenceButton:Landroid/widget/RadioButton;

.field private mPreferenceTitle:Landroid/widget/TextView;

.field private mTitleValue:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 354
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 348
    iput-object v0, p0, Lcom/mediatek/nfc/SecurityItemPreference;->mPreferenceTitle:Landroid/widget/TextView;

    .line 349
    iput-object v0, p0, Lcom/mediatek/nfc/SecurityItemPreference;->mPreferenceButton:Landroid/widget/RadioButton;

    .line 350
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/nfc/SecurityItemPreference;->mTitleValue:Ljava/lang/CharSequence;

    .line 351
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/nfc/SecurityItemPreference;->mChecked:Z

    .line 355
    const v0, 0x7f040023

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 356
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 395
    iget-boolean v0, p0, Lcom/mediatek/nfc/SecurityItemPreference;->mChecked:Z

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 360
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 361
    const v0, 0x7f0b0043

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/nfc/SecurityItemPreference;->mPreferenceTitle:Landroid/widget/TextView;

    .line 362
    iget-object v0, p0, Lcom/mediatek/nfc/SecurityItemPreference;->mPreferenceTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mediatek/nfc/SecurityItemPreference;->mTitleValue:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 363
    const v0, 0x7f0b0042

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/mediatek/nfc/SecurityItemPreference;->mPreferenceButton:Landroid/widget/RadioButton;

    .line 364
    iget-object v0, p0, Lcom/mediatek/nfc/SecurityItemPreference;->mPreferenceButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 365
    iget-object v0, p0, Lcom/mediatek/nfc/SecurityItemPreference;->mPreferenceButton:Landroid/widget/RadioButton;

    iget-boolean v1, p0, Lcom/mediatek/nfc/SecurityItemPreference;->mChecked:Z

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 366
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 381
    invoke-virtual {p0}, Lcom/mediatek/nfc/SecurityItemPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 383
    .local v0, newValue:Z
    :goto_0
    if-nez v0, :cond_2

    .line 384
    const-string v1, "SecurityItemPreference"

    const-string v2, "button.onClick return"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :cond_0
    :goto_1
    return-void

    .line 381
    .end local v0           #newValue:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 388
    .restart local v0       #newValue:Z
    :cond_2
    invoke-virtual {p0, v0}, Lcom/mediatek/nfc/SecurityItemPreference;->setChecked(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 389
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    .line 390
    const-string v1, "SecurityItemPreference"

    const-string v2, "button.onClick"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setChecked(Z)Z
    .locals 3
    .parameter "checked"

    .prologue
    const/4 v0, 0x0

    .line 399
    iget-object v1, p0, Lcom/mediatek/nfc/SecurityItemPreference;->mPreferenceButton:Landroid/widget/RadioButton;

    if-nez v1, :cond_1

    .line 400
    const-string v1, "SecurityItemPreference"

    const-string v2, "setChecked return"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iput-boolean p1, p0, Lcom/mediatek/nfc/SecurityItemPreference;->mChecked:Z

    .line 410
    :cond_0
    :goto_0
    return v0

    .line 405
    :cond_1
    iget-boolean v1, p0, Lcom/mediatek/nfc/SecurityItemPreference;->mChecked:Z

    if-eq v1, p1, :cond_0

    .line 406
    iget-object v0, p0, Lcom/mediatek/nfc/SecurityItemPreference;->mPreferenceButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 407
    iput-boolean p1, p0, Lcom/mediatek/nfc/SecurityItemPreference;->mChecked:Z

    .line 408
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "title"

    .prologue
    .line 370
    iget-object v0, p0, Lcom/mediatek/nfc/SecurityItemPreference;->mPreferenceTitle:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 371
    iput-object p1, p0, Lcom/mediatek/nfc/SecurityItemPreference;->mTitleValue:Ljava/lang/CharSequence;

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/mediatek/nfc/SecurityItemPreference;->mTitleValue:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 374
    iput-object p1, p0, Lcom/mediatek/nfc/SecurityItemPreference;->mTitleValue:Ljava/lang/CharSequence;

    .line 375
    iget-object v0, p0, Lcom/mediatek/nfc/SecurityItemPreference;->mPreferenceTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mediatek/nfc/SecurityItemPreference;->mTitleValue:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 377
    :cond_1
    return-void
.end method
