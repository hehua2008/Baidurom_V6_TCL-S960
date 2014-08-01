.class Lcom/android/jrdsettings/JrdthemeSettings$ThemeAdapter;
.super Landroid/widget/BaseAdapter;
.source "JrdthemeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/JrdthemeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ThemeAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/jrdsettings/JrdthemeSettings;


# direct methods
.method public constructor <init>(Lcom/android/jrdsettings/JrdthemeSettings;Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 292
    .local p3, items:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    iput-object p1, p0, Lcom/android/jrdsettings/JrdthemeSettings$ThemeAdapter;->this$0:Lcom/android/jrdsettings/JrdthemeSettings;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 293
    iput-object p2, p0, Lcom/android/jrdsettings/JrdthemeSettings$ThemeAdapter;->mContext:Landroid/content/Context;

    .line 294
    iput-object p3, p0, Lcom/android/jrdsettings/JrdthemeSettings$ThemeAdapter;->mListItems:Ljava/util/List;

    .line 295
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/jrdsettings/JrdthemeSettings$ThemeAdapter;->mListItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 304
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 309
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 314
    const/4 v1, 0x0

    .line 315
    .local v1, holder:Lcom/android/jrdsettings/JrdthemeSettings$ViewHolder;
    if-nez p2, :cond_0

    .line 316
    iget-object v3, p0, Lcom/android/jrdsettings/JrdthemeSettings$ThemeAdapter;->this$0:Lcom/android/jrdsettings/JrdthemeSettings;

    #getter for: Lcom/android/jrdsettings/JrdthemeSettings;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v3}, Lcom/android/jrdsettings/JrdthemeSettings;->access$100(Lcom/android/jrdsettings/JrdthemeSettings;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040059

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 317
    new-instance v1, Lcom/android/jrdsettings/JrdthemeSettings$ViewHolder;

    .end local v1           #holder:Lcom/android/jrdsettings/JrdthemeSettings$ViewHolder;
    invoke-direct {v1}, Lcom/android/jrdsettings/JrdthemeSettings$ViewHolder;-><init>()V

    .line 318
    .restart local v1       #holder:Lcom/android/jrdsettings/JrdthemeSettings$ViewHolder;
    const v3, 0x7f0b0103

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/android/jrdsettings/JrdthemeSettings$ViewHolder;->mText:Landroid/widget/TextView;

    .line 319
    const v3, 0x7f0b0102

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/android/jrdsettings/JrdthemeSettings$ViewHolder;->mIcon:Landroid/widget/ImageView;

    .line 320
    const v3, 0x7f0b0104

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, v1, Lcom/android/jrdsettings/JrdthemeSettings$ViewHolder;->rb:Landroid/widget/RadioButton;

    .line 321
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 325
    :goto_0
    iget-object v4, v1, Lcom/android/jrdsettings/JrdthemeSettings$ViewHolder;->mText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/jrdsettings/JrdthemeSettings$ThemeAdapter;->mListItems:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const-string v5, "text"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    :try_start_0
    iget-object v3, p0, Lcom/android/jrdsettings/JrdthemeSettings$ThemeAdapter;->this$0:Lcom/android/jrdsettings/JrdthemeSettings;

    invoke-virtual {v3}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v3, p0, Lcom/android/jrdsettings/JrdthemeSettings$ThemeAdapter;->mListItems:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const-string v5, "drawable"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 328
    .local v2, image:Landroid/graphics/drawable/Drawable;
    iget-object v3, v1, Lcom/android/jrdsettings/JrdthemeSettings$ViewHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    .end local v2           #image:Landroid/graphics/drawable/Drawable;
    :goto_1
    iget-object v4, v1, Lcom/android/jrdsettings/JrdthemeSettings$ViewHolder;->rb:Landroid/widget/RadioButton;

    iget-object v3, p0, Lcom/android/jrdsettings/JrdthemeSettings$ThemeAdapter;->mListItems:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const-string v5, "checked"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v4, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 334
    return-object p2

    .line 323
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #holder:Lcom/android/jrdsettings/JrdthemeSettings$ViewHolder;
    check-cast v1, Lcom/android/jrdsettings/JrdthemeSettings$ViewHolder;

    .restart local v1       #holder:Lcom/android/jrdsettings/JrdthemeSettings$ViewHolder;
    goto :goto_0

    .line 329
    :catch_0
    move-exception v0

    .line 330
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "JrdthemeSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Loading jrdtheme settings icon error. resID="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/android/jrdsettings/JrdthemeSettings$ThemeAdapter;->mListItems:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const-string v6, "drawable"

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
