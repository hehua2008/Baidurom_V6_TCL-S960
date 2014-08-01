.class public Lcom/mediatek/gemini/simui/SimSelectDialogPreference;
.super Landroid/preference/DialogPreference;
.source "SimSelectDialogPreference.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/gemini/simui/SimSelectDialogPreference$SimDialogAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SimSelectDialogPreference"


# instance fields
.field private mAdapter:Lcom/mediatek/gemini/simui/SimSelectDialogPreference$SimDialogAdapter;

.field private mClickedDialogEntryIndex:I

.field private mContext:Landroid/content/Context;

.field private mEnableNormalItem:Z

.field private mEntryValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mIndex:I

.field private mItemStatus:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mListView:Landroid/widget/ListView;

.field private mNormalItem:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSimIndicators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSimItem:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mWidgetType:Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 60
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mEntryValues:Ljava/util/List;

    .line 38
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mSimItem:Ljava/util/List;

    .line 40
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mSimIndicators:Ljava/util/List;

    .line 44
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mNormalItem:Ljava/util/List;

    .line 47
    const/4 v3, -0x1

    iput v3, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mIndex:I

    .line 49
    sget-object v3, Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;->RadioButton:Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;

    iput-object v3, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mWidgetType:Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;

    .line 50
    iput-boolean v6, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mEnableNormalItem:Z

    .line 61
    sget-object v3, Lcom/mediatek/gemini/simui/R$styleable;->SimSelectDialogPreference:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 62
    .local v2, typeArray:Landroid/content/res/TypedArray;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f08

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v2, v5, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    float-to-int v1, v3

    .line 64
    .local v1, paddingStart:I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v2, v6, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    float-to-int v0, v3

    .line 67
    .local v0, paddingEnd:I
    invoke-virtual {p0, v5}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 68
    iput-object p1, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mContext:Landroid/content/Context;

    .line 69
    new-instance v3, Lcom/mediatek/gemini/simui/SimSelectDialogPreference$SimDialogAdapter;

    invoke-direct {v3, p0, p1}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference$SimDialogAdapter;-><init>(Lcom/mediatek/gemini/simui/SimSelectDialogPreference;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mAdapter:Lcom/mediatek/gemini/simui/SimSelectDialogPreference$SimDialogAdapter;

    .line 70
    iget-object v3, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mAdapter:Lcom/mediatek/gemini/simui/SimSelectDialogPreference$SimDialogAdapter;

    invoke-virtual {v3, v1, v0}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference$SimDialogAdapter;->setPadding(II)V

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/gemini/simui/SimSelectDialogPreference;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mSimItem:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/gemini/simui/SimSelectDialogPreference;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mNormalItem:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/gemini/simui/SimSelectDialogPreference;)Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mWidgetType:Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/gemini/simui/SimSelectDialogPreference;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mSimIndicators:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/gemini/simui/SimSelectDialogPreference;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mItemStatus:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/gemini/simui/SimSelectDialogPreference;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mEnableNormalItem:Z

    return v0
.end method

.method static synthetic access$600(Lcom/mediatek/gemini/simui/SimSelectDialogPreference;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget v0, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mIndex:I

    return v0
.end method

.method private findIndexOfValue(J)I
    .locals 3
    .parameter "value"

    .prologue
    .line 171
    iget-object v1, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mEntryValues:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 172
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mEntryValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 173
    iget-object v1, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mEntryValues:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 178
    .end local v0           #i:I
    :goto_1
    return v0

    .line 172
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 178
    .end local v0           #i:I
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private getPrefSummary(I)Ljava/lang/CharSequence;
    .locals 5
    .parameter "index"

    .prologue
    .line 152
    const/4 v3, 0x0

    .line 153
    .local v3, summary:Ljava/lang/String;
    iget-object v4, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mAdapter:Lcom/mediatek/gemini/simui/SimSelectDialogPreference$SimDialogAdapter;

    invoke-virtual {v4, p1}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference$SimDialogAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 154
    .local v0, item:Ljava/lang/Object;
    instance-of v4, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    if-eqz v4, :cond_1

    move-object v2, v0

    .line 155
    check-cast v2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .line 156
    .local v2, simItem:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    iget-object v3, v2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDisplayName:Ljava/lang/String;

    .line 161
    .end local v2           #simItem:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_0
    :goto_0
    return-object v3

    .line 157
    :cond_1
    instance-of v4, v0, Ljava/lang/String;

    if-eqz v4, :cond_0

    move-object v1, v0

    .line 158
    check-cast v1, Ljava/lang/String;

    .line 159
    .local v1, nonSimItem:Ljava/lang/String;
    move-object v3, v1

    goto :goto_0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mAdapter:Lcom/mediatek/gemini/simui/SimSelectDialogPreference$SimDialogAdapter;

    invoke-virtual {v0}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference$SimDialogAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getTotalItemCount()I
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mAdapter:Lcom/mediatek/gemini/simui/SimSelectDialogPreference$SimDialogAdapter;

    invoke-virtual {v0}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference$SimDialogAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method protected onDialogClosed(Z)V
    .locals 5
    .parameter "positiveResult"

    .prologue
    .line 198
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 199
    const-string v2, "SimSelectDialogPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "positiveResult = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mClickedDialogEntryIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mClickedDialogEntryIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    if-eqz p1, :cond_0

    iget v2, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mIndex:I

    iget v3, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mClickedDialogEntryIndex:I

    if-eq v2, v3, :cond_0

    .line 204
    iget-object v2, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mEntryValues:Ljava/util/List;

    iget v3, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mClickedDialogEntryIndex:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 206
    .local v0, simId:J
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 207
    iget v2, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mClickedDialogEntryIndex:I

    iput v2, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mIndex:I

    .line 208
    iget-object v2, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mAdapter:Lcom/mediatek/gemini/simui/SimSelectDialogPreference$SimDialogAdapter;

    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 211
    .end local v0           #simId:J
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 338
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    iput p3, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mClickedDialogEntryIndex:I

    .line 340
    const-string v0, "SimSelectDialogPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onItemClick and click item = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mClickedDialogEntryIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    invoke-virtual {p0}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/preference/DialogPreference;->onClick(Landroid/content/DialogInterface;I)V

    .line 346
    invoke-virtual {p0}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 348
    :cond_0
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 3
    .parameter "builder"

    .prologue
    const/4 v2, 0x0

    .line 182
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 184
    iget-object v0, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mAdapter:Lcom/mediatek/gemini/simui/SimSelectDialogPreference$SimDialogAdapter;

    if-eqz v0, :cond_0

    .line 185
    new-instance v0, Landroid/widget/ListView;

    iget-object v1, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mListView:Landroid/widget/ListView;

    .line 186
    iget-object v0, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mAdapter:Lcom/mediatek/gemini/simui/SimSelectDialogPreference$SimDialogAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 187
    iget-object v0, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 188
    iget-object v0, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 192
    :goto_0
    invoke-virtual {p1, v2, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 193
    return-void

    .line 190
    :cond_0
    const-string v0, "SimSelectDialogPreference"

    const-string v1, "Error with null adapter"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setEnableNormalItem(Z)V
    .locals 1
    .parameter "isEnabled"

    .prologue
    .line 148
    iput-boolean p1, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mEnableNormalItem:Z

    .line 149
    iget-object v0, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mAdapter:Lcom/mediatek/gemini/simui/SimSelectDialogPreference$SimDialogAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 150
    return-void
.end method

.method public setEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 215
    invoke-virtual {p0}, Landroid/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 216
    .local v0, icon:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 217
    if-eqz p1, :cond_0

    const/16 v1, 0xff

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 222
    :goto_1
    invoke-super {p0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 223
    return-void

    .line 217
    :cond_0
    const/16 v1, 0x4b

    goto :goto_0

    .line 220
    :cond_1
    const-string v1, "SimSelectDialogPreference"

    const-string v2, "fail to set icon alpha due to icon is null"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setEntriesData(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 95
    .local p1, simValues:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    .local p2, indicator:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .local p3, lable:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p4, itemStatus:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Boolean;>;"
    iput-object p1, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mSimItem:Ljava/util/List;

    .line 96
    iput-object p3, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mNormalItem:Ljava/util/List;

    .line 97
    iput-object p2, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mSimIndicators:Ljava/util/List;

    .line 98
    iput-object p4, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mItemStatus:Ljava/util/List;

    .line 99
    return-void
.end method

.method public setEntryValues(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 128
    .local p1, values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    iput-object p1, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mEntryValues:Ljava/util/List;

    .line 129
    return-void
.end method

.method public setValue(J)V
    .locals 1
    .parameter "value"

    .prologue
    .line 140
    invoke-direct {p0, p1, p2}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->findIndexOfValue(J)I

    move-result v0

    iput v0, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mIndex:I

    .line 141
    iget v0, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mIndex:I

    if-ltz v0, :cond_0

    .line 142
    iget v0, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mIndex:I

    invoke-direct {p0, v0}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->getPrefSummary(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v0, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mAdapter:Lcom/mediatek/gemini/simui/SimSelectDialogPreference$SimDialogAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 145
    :cond_0
    return-void
.end method

.method public setWidgetType(Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mWidgetType:Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;

    .line 88
    return-void
.end method

.method public updateSimIndicator(II)V
    .locals 5
    .parameter "slotId"
    .parameter "indicator"

    .prologue
    .line 107
    const/4 v2, 0x0

    .line 108
    .local v2, listIndex:I
    iget-object v3, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mSimItem:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .line 109
    .local v1, item:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    iget v3, v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    if-ne v3, p1, :cond_0

    .line 110
    iget-object v3, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mSimIndicators:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 111
    iget-object v3, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mSimIndicators:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object v3, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mAdapter:Lcom/mediatek/gemini/simui/SimSelectDialogPreference$SimDialogAdapter;

    invoke-virtual {v3}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 115
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 117
    .end local v1           #item:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_1
    return-void
.end method

.method public updateSimInfoList(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 102
    .local p1, simValues:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    iput-object p1, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mSimItem:Ljava/util/List;

    .line 103
    iget-object v0, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mAdapter:Lcom/mediatek/gemini/simui/SimSelectDialogPreference$SimDialogAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 104
    return-void
.end method
