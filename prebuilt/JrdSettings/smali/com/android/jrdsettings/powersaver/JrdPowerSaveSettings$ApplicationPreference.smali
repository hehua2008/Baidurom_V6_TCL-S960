.class Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings$ApplicationPreference;
.super Landroid/preference/Preference;
.source "JrdPowerSaveSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ApplicationPreference"
.end annotation


# instance fields
.field info:Landroid/content/pm/ApplicationInfo;

.field mDeleteClick:Landroid/view/View$OnClickListener;

.field final synthetic this$0:Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;


# direct methods
.method public constructor <init>(Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 625
    iput-object p1, p0, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings$ApplicationPreference;->this$0:Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;

    .line 626
    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 642
    new-instance v0, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings$ApplicationPreference$1;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings$ApplicationPreference$1;-><init>(Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings$ApplicationPreference;)V

    iput-object v0, p0, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings$ApplicationPreference;->mDeleteClick:Landroid/view/View$OnClickListener;

    .line 628
    return-void
.end method

.method private setApplicationInfo(Landroid/content/pm/ApplicationInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 630
    iput-object p1, p0, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings$ApplicationPreference;->info:Landroid/content/pm/ApplicationInfo;

    .line 631
    iget-object v0, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 632
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .parameter "parent"

    .prologue
    .line 636
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 637
    const v0, 0x7f0b00ff

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings$ApplicationPreference;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, p0, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings$ApplicationPreference;->this$0:Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;

    iget-object v2, v2, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageItemInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 638
    const v0, 0x7f0b0100

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings$ApplicationPreference;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, p0, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings$ApplicationPreference;->this$0:Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;

    iget-object v2, v2, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 639
    const v0, 0x7f0b0101

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings$ApplicationPreference;->mDeleteClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 640
    return-void
.end method
