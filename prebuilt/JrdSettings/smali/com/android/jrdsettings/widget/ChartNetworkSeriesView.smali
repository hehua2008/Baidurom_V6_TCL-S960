.class public Lcom/android/jrdsettings/widget/ChartNetworkSeriesView;
.super Landroid/view/View;
.source "ChartNetworkSeriesView.java"


# static fields
.field private static final ESTIMATE_ENABLED:Z = false

.field private static final LOGD:Z = true

.field private static final TAG:Ljava/lang/String; = "ChartNetworkSeriesView"


# instance fields
.field private mEnd:J

.field private mEndTime:J

.field private mEstimateVisible:Z

.field private mHoriz:Lcom/android/jrdsettings/widget/ChartAxis;

.field private mMax:J

.field private mMaxEstimate:J

.field private mPaintEstimate:Landroid/graphics/Paint;

.field private mPaintFill:Landroid/graphics/Paint;

.field private mPaintFillSecondary:Landroid/graphics/Paint;

.field private mPaintStroke:Landroid/graphics/Paint;

.field private mPathEstimate:Landroid/graphics/Path;

.field private mPathFill:Landroid/graphics/Path;

.field private mPathStroke:Landroid/graphics/Path;

.field private mPathValid:Z

.field private mPrimaryLeft:J

.field private mPrimaryRight:J

.field private mStart:J

.field private mStats:Landroid/net/NetworkStatsHistory;

.field private mVert:Lcom/android/jrdsettings/widget/ChartAxis;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 79
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/jrdsettings/widget/ChartNetworkSeriesView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/jrdsettings/widget/ChartNetworkSeriesView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/high16 v7, -0x1

    const/4 v6, 0x0

    .line 87
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    const-wide/high16 v4, -0x8000

    iput-wide v4, p0, Lcom/android/jrdsettings/widget/ChartNetworkSeriesView;->mEndTime:J

    .line 72
    iput-boolean v6, p0, Lcom/android/jrdsettings/widget/ChartNetworkSeriesView;->mPathValid:Z

    .line 73
    iput-boolean v6, p0, Lcom/android/jrdsettings/widget/ChartNetworkSeriesView;->mEstimateVisible:Z

    .line 89
    sget-object v4, Lcom/android/jrdsettings/R$styleable;->ChartNetworkSeriesView:[I

    invoke-virtual {p1, p2, v4, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 92
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    .line 93
    .local v3, stroke:I
    const/4 v4, 0x1

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 94
    .local v1, fill:I
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 97
    .local v2, fillSecondary:I
    invoke-virtual {p0, v3, v1, v2}, Lcom/android/jrdsettings/widget/ChartNetworkSeriesView;->setChartColor(III)V

    .line 98
    invoke-virtual {p0, v6}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 100
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 102
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    iput-object v4, p0, Lcom/android/jrdsettings/widget/ChartNetworkSeriesView;->mPathStroke:Landroid/graphics/Path;

    .line 103
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    iput-object v4, p0, Lcom/android/jrdsettings/widget/ChartNetworkSeriesView;->mPathFill:Landroid/graphics/Path;

    .line 104
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    iput-object v4, p0, Lcom/android/jrdsettings/widget/ChartNetworkSeriesView;->mPathEstimate:Landroid/graphics/Path;

    .line 105
    return-void
.end method

.method private generatePath()V
    .locals 29

    .prologue
    .line 169
    const-string v25, "ChartNetworkSeriesView"

    const-string v26, "generatePath()"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const-wide/16 v25, 0x0

    move-wide/from16 v0, v25

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/jrdsettings/widget/ChartNetworkSeriesView;->mMax:J

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/widget/ChartNetworkSeriesView;->mPathStroke:Landroid/graphics/Path;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Path;->reset()V

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/widget/ChartNetworkSeriesView;->mPathFill:Landroid/graphics/Path;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Path;->reset()V

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/widget/ChartNetworkSeriesView;->mPathEstimate:Landroid/graphics/Path;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Path;->reset()V

    .line 175
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/jrdsettings/widget/ChartNetworkSeriesView;->mPathValid:Z

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/widget/ChartNetworkSeriesView;->mStats:Landroid/net/NetworkStatsHistory;

    move-object/from16 v25, v0

    if-eqz v25, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/widget/ChartNetworkSeriesView;->mStats:Landroid/net/NetworkStatsHistory;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/net/NetworkStatsHistory;->size()I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_1

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v24

    .line 183
    .local v24, width:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v10

    .line 185
    .local v10, height:I
    const/16 v21, 0x0

    .line 186
    .local v21, started:Z
    const/4 v14, 0x0

    .line 187
    .local v14, lastX:F
    int-to-float v15, v10

    .line 188
    .local v15, lastY:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/widget/ChartNetworkSeriesView;->mHoriz:Lcom/android/jrdsettings/widget/ChartAxis;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-interface {v0, v14}, Lcom/android/jrdsettings/widget/ChartAxis;->convertToValue(F)J

    move-result-wide v12

    .line 191
    .local v12, lastTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/widget/ChartNetworkSeriesView;->mPathStroke:Landroid/graphics/Path;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v14, v15}, Landroid/graphics/Path;->moveTo(FF)V

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/widget/ChartNetworkSeriesView;->mPathFill:Landroid/graphics/Path;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v14, v15}, Landroid/graphics/Path;->moveTo(FF)V

    .line 197
    const-wide/16 v22, 0x0

    .line 199
    .local v22, totalData:J
    const/4 v9, 0x0

    .line 201
    .local v9, entry:Landroid/net/NetworkStatsHistory$Entry;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/widget/ChartNetworkSeriesView;->mStats:Landroid/net/NetworkStatsHistory;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/jrdsettings/widget/ChartNetworkSeriesView;->mStart:J

    move-wide/from16 v26, v0

    invoke-virtual/range {v25 .. v27}, Landroid/net/NetworkStatsHistory;->getIndexBefore(J)I

    move-result v16

    .line 202
    .local v16, start:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/widget/ChartNetworkSeriesView;->mStats:Landroid/net/NetworkStatsHistory;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/jrdsettings/widget/ChartNetworkSeriesView;->mEnd:J

    move-wide/from16 v26, v0

    invoke-virtual/range {v25 .. v27}, Landroid/net/NetworkStatsHistory;->getIndexAfter(J)I

    move-result v4

    .line 203
    .local v4, end:I
    move/from16 v11, v16

    .local v11, i:I
    :goto_1
    if-gt v11, v4, :cond_4

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/widget/ChartNetworkSeriesView;->mStats:Landroid/net/NetworkStatsHistory;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v11, v9}, Landroid/net/NetworkStatsHistory;->getValues(ILandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v9

    .line 206
    iget-wide v0, v9, Landroid/net/NetworkStatsHistory$Entry;->bucketStart:J

    move-wide/from16 v17, v0

    .line 207
    .local v17, startTime:J
    iget-wide v0, v9, Landroid/net/NetworkStatsHistory$Entry;->bucketDuration:J

    move-wide/from16 v25, v0

    add-long v5, v17, v25

    .line 209
    .local v5, endTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/widget/ChartNetworkSeriesView;->mHoriz:Lcom/android/jrdsettings/widget/ChartAxis;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-wide/from16 v1, v17

    invoke-interface {v0, v1, v2}, Lcom/android/jrdsettings/widget/ChartAxis;->convertToPoint(J)F

    move-result v19

    .line 210
    .local v19, startX:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/widget/ChartNetworkSeriesView;->mHoriz:Lcom/android/jrdsettings/widget/ChartAxis;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-interface {v0, v5, v6}, Lcom/android/jrdsettings/widget/ChartAxis;->convertToPoint(J)F

    move-result v7

    .line 213
    .local v7, endX:F
    const/16 v25, 0x0

    cmpg-float v25, v7, v25

    if-gez v25, :cond_2

    .line 203
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 216
    :cond_2
    iget-wide v0, v9, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    move-wide/from16 v25, v0

    iget-wide v0, v9, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    move-wide/from16 v27, v0

    add-long v25, v25, v27

    add-long v22, v22, v25

    .line 218
    move/from16 v20, v15

    .line 219
    .local v20, startY:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/widget/ChartNetworkSeriesView;->mVert:Lcom/android/jrdsettings/widget/ChartAxis;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-wide/from16 v1, v22

    invoke-interface {v0, v1, v2}, Lcom/android/jrdsettings/widget/ChartAxis;->convertToPoint(J)F

    move-result v8

    .line 221
    .local v8, endY:F
    cmp-long v25, v12, v17

    if-eqz v25, :cond_3

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/widget/ChartNetworkSeriesView;->mPathStroke:Landroid/graphics/Path;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/widget/ChartNetworkSeriesView;->mPathFill:Landroid/graphics/Path;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 228
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/widget/ChartNetworkSeriesView;->mPathStroke:Landroid/graphics/Path;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/widget/ChartNetworkSeriesView;->mPathFill:Landroid/graphics/Path;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 231
    move v14, v7

    .line 232
    move v15, v8

    .line 233
    move-wide v12, v5

    goto :goto_2

    .line 237
    .end local v5           #endTime:J
    .end local v7           #endX:F
    .end local v8           #endY:F
    .end local v17           #startTime:J
    .end local v19           #startX:F
    .end local v20           #startY:F
    :cond_4
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/jrdsettings/widget/ChartNetworkSeriesView;->mEndTime:J

    move-wide/from16 v25, v0

    cmp-long v25, v12, v25

    if-gez v25, :cond_5

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/widget/ChartNetworkSeriesView;->mHoriz:Lcom/android/jrdsettings/widget/ChartAxis;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/jrdsettings/widget/ChartNetworkSeriesView;->mEndTime:J

    move-wide/from16 v26, v0

    invoke-interface/range {v25 .. v27}, Lcom/android/jrdsettings/widget/ChartAxis;->convertToPoint(J)F

    move-result v14

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/widget/ChartNetworkSeriesView;->mPathStroke:Landroid/graphics/Path;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v14, v15}, Landroid/graphics/Path;->lineTo(FF)V

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/widget/ChartNetworkSeriesView;->mPathFill:Landroid/graphics/Path;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v14, v15}, Landroid/graphics/Path;->lineTo(FF)V

    .line 245
    :cond_5
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    .line 246
    .local v3, bounds:Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/widget/ChartNetworkSeriesView;->mPathFill:Landroid/graphics/Path;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 247
    const-string v25, "ChartNetworkSeriesView"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "onLayout() rendered with bounds="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v3}, Landroid/graphics/RectF;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " and totalData="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/widget/ChartNetworkSeriesView;->mPathFill:Landroid/graphics/Path;

    move-object/from16 v25, v0

    int-to-float v0, v10

    move/from16 v26, v0

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v0, v14, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/widget/ChartNetworkSeriesView;->mPathFill:Landroid/graphics/Path;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    int-to-float v0, v10

    move/from16 v27, v0

    invoke-virtual/range {v25 .. v27}, Landroid/graphics/Path;->lineTo(FF)V

    .line 255
    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/jrdsettings/widget/ChartNetworkSeriesView;->mMax:J

    .line 290
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_0
.end method


# virtual methods
.method public bindNetworkStats(Landroid/net/NetworkStatsHistory;)V
    .locals 0
    .parameter "stats"

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/jrdsettings/widget/ChartNetworkSeriesView;->mStats:Landroid/net/NetworkStatsHistory;

    .line 139
    invoke-virtual {p0}, Lcom/android/jrdsettings/widget/ChartNetworkSeriesView;->invalidatePath()V

    .line 140
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 141
    return-void
.end method

.method public getMaxEstimate()J
    .locals 2

    .prologue
    .line 303
    iget-wide v0, p0, Lcom/android/jrdsettings/widget/ChartNetworkSeriesView;->mMaxEstimate:J

    return-wide v0
.end method

.method public getMaxVisible()J
    .locals 9

    .prologue
    .line 307
    iget-boolean v0, p0, Lcom/android/jrdsettings/widget/ChartNetworkSeriesView;->mEstimateVisible:Z

    if-eqz v0, :cond_1

    iget-wide v7, p0, Lcom/android/jrdsettings/widget/ChartNetworkSeriesView;->mMaxEstimate:J

    .line 308
    .local v7, maxVisible:J
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, v7, v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/android/jrdsettings/widget/ChartNetworkSeriesView;->mStats:Landroid/net/NetworkStatsHistory;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/android/jrdsettings/widget/ChartNetworkSeriesView;->mStats:Landroid/net/NetworkStatsHistory;

    iget-wide v1, p0, Lcom/android/jrdsettings/widget/ChartNetworkSeriesView;->mStart:J

    iget-wide v3, p0, Lcom/android/jrdsettings/widget/ChartNetworkSeriesView;->mEnd:J

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/net/NetworkStatsHistory;->getValues(JJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v6

    .line 311
    .local v6, entry:Landroid/net/NetworkStatsHistory$Entry;
    iget-wide v0, v6, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v2, v6, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long v7, v0, v2

    .line 313
    .end local v6           #entry:Landroid/net/NetworkStatsHistory$Entry;
    .end local v7           #maxVisible:J
    :cond_0
    return-wide v7

    .line 307
    :cond_1
    iget-wide v7, p0, Lcom/android/jrdsettings/widget/ChartNetworkSeriesView;->mMax:J

    goto :goto_0
.end method

.method init(Lcom/android/jrdsettings/widget/ChartAxis;Lcom/android/jrdsettings/widget/ChartAxis;)V
    .locals 1
    .parameter "horiz"
    .parameter "vert"

    .prologue
    .line 108
    const-string v0, "missing horiz"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/jrdsettings/widget/ChartAxis;

    iput-object v0, p0, Lcom/android/jrdsettings/widget/ChartNetworkSeriesView;->mHoriz:Lcom/android/jrdsettings/widget/ChartAxis;

    .line 109
    const-string v0, "missing vert"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/jrdsettings/widget/ChartAxis;

    iput-object v0, p0, Lcom/android/jrdsettings/widget/ChartNetworkSeriesView;->mVert:Lcom/android/jrdsettings/widget/ChartAxis;

    .line 110
    return-void
.end method

.method public invalidatePath()V
    .locals 2

    .prologue
    .line 159
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/jrdsettings/widget/ChartNetworkSeriesView;->mPathValid:Z

    .line 160
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/jrdsettings/widget/ChartNetworkSeriesView;->mMax:J

    .line 161
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 162
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 321
    iget-boolean v3, p0, Lcom/android/jrdsettings/widget/ChartNetworkSeriesView;->mPathValid:Z

    if-nez v3, :cond_0

    .line 322
    invoke-direct {p0}, Lcom/android/jrdsettings/widget/ChartNetworkSeriesView;->generatePath()V

    .line 325
    :cond_0
    iget-object v3, p0, Lcom/android/jrdsettings/widget/ChartNetworkSeriesView;->mHoriz:Lcom/android/jrdsettings/widget/ChartAxis;

    iget-wide v4, p0, Lcom/android/jrdsettings/widget/ChartNetworkSeriesView;->mPrimaryLeft:J

    invoke-interface {v3, v4, v5}, Lcom/android/jrdsettings/widget/ChartAxis;->convertToPoint(J)F

    move-result v0

    .line 326
    .local v0, primaryLeftPoint:F
    iget-object v3, p0, Lcom/android/jrdsettings/widget/ChartNetworkSeriesView;->mHoriz:Lcom/android/jrdsettings/widget/ChartAxis;

    iget-wide v4, p0, Lcom/android/jrdsettings/widget/ChartNetworkSeriesView;->mPrimaryRight:J

    invoke-interface {v3, v4, v5}, Lcom/android/jrdsettings/widget/ChartAxis;->convertToPoint(J)F

    move-result v1

    .line 328
    .local v1, primaryRightPoint:F
    iget-boolean v3, p0, Lcom/android/jrdsettings/widget/ChartNetworkSeriesView;->mEstimateVisible:Z

    if-eqz v3, :cond_1

    .line 329
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 330
    .local v2, save:I
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {p1, v7, v7, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 331
    iget-object v3, p0, Lcom/android/jrdsettings/widget/ChartNetworkSeriesView;->mPathEstimate:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/android/jrdsettings/widget/ChartNetworkSeriesView;->mPaintEstimate:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 332
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 335
    .end local v2           #save:I
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 336
    .restart local v2       #save:I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v6, v6, v0, v3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 337
    iget-object v3, p0, Lcom/android/jrdsettings/widget/ChartNetworkSeriesView;->mPathFill:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/android/jrdsettings/widget/ChartNetworkSeriesView;->mPaintFillSecondary:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 338
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 340
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 341
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v1, v6, v3, v4}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 342
    iget-object v3, p0, Lcom/android/jrdsettings/widget/ChartNetworkSeriesView;->mPathFill:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/android/jrdsettings/widget/ChartNetworkSeriesView;->mPaintFillSecondary:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 343
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 345
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 346
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v0, v6, v1, v3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 347
    iget-object v3, p0, Lcom/android/jrdsettings/widget/ChartNetworkSeriesView;->mPathFill:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/android/jrdsettings/widget/ChartNetworkSeriesView;->mPaintFill:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 348
    iget-object v3, p0, Lcom/android/jrdsettings/widget/ChartNetworkSeriesView;->mPathStroke:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/android/jrdsettings/widget/ChartNetworkSeriesView;->mPaintStroke:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 349
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 351
    return-void
.end method

.method public setBounds(JJ)V
    .locals 0
    .parameter "start"
    .parameter "end"

    .prologue
    .line 144
    iput-wide p1, p0, Lcom/android/jrdsettings/widget/ChartNetworkSeriesView;->mStart:J

    .line 145
    iput-wide p3, p0, Lcom/android/jrdsettings/widget/ChartNetworkSeriesView;->mEnd:J

    .line 146
    return-void
.end method

.method public setChartColor(III)V
    .locals 4
    .parameter "stroke"
    .parameter "fill"
    .parameter "fillSecondary"

    .prologue
    const/4 v3, 0x1

    .line 113
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/jrdsettings/widget/ChartNetworkSeriesView;->mPaintStroke:Landroid/graphics/Paint;

    .line 114
    iget-object v0, p0, Lcom/android/jrdsettings/widget/ChartNetworkSeriesView;->mPaintStroke:Landroid/graphics/Paint;

    const/high16 v1, 0x4080

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 115
    iget-object v0, p0, Lcom/android/jrdsettings/widget/ChartNetworkSeriesView;->mPaintStroke:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 116
    iget-object v0, p0, Lcom/android/jrdsettings/widget/ChartNetworkSeriesView;->mPaintStroke:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 117
    iget-object v0, p0, Lcom/android/jrdsettings/widget/ChartNetworkSeriesView;->mPaintStroke:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 119
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/jrdsettings/widget/ChartNetworkSeriesView;->mPaintFill:Landroid/graphics/Paint;

    .line 120
    iget-object v0, p0, Lcom/android/jrdsettings/widget/ChartNetworkSeriesView;->mPaintFill:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 121
    iget-object v0, p0, Lcom/android/jrdsettings/widget/ChartNetworkSeriesView;->mPaintFill:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 122
    iget-object v0, p0, Lcom/android/jrdsettings/widget/ChartNetworkSeriesView;->mPaintFill:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 124
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/jrdsettings/widget/ChartNetworkSeriesView;->mPaintFillSecondary:Landroid/graphics/Paint;

    .line 125
    iget-object v0, p0, Lcom/android/jrdsettings/widget/ChartNetworkSeriesView;->mPaintFillSecondary:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 126
    iget-object v0, p0, Lcom/android/jrdsettings/widget/ChartNetworkSeriesView;->mPaintFillSecondary:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 127
    iget-object v0, p0, Lcom/android/jrdsettings/widget/ChartNetworkSeriesView;->mPaintFillSecondary:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 129
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/jrdsettings/widget/ChartNetworkSeriesView;->mPaintEstimate:Landroid/graphics/Paint;

    .line 130
    iget-object v0, p0, Lcom/android/jrdsettings/widget/ChartNetworkSeriesView;->mPaintEstimate:Landroid/graphics/Paint;

    const/high16 v1, 0x4040

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 131
    iget-object v0, p0, Lcom/android/jrdsettings/widget/ChartNetworkSeriesView;->mPaintEstimate:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 132
    iget-object v0, p0, Lcom/android/jrdsettings/widget/ChartNetworkSeriesView;->mPaintEstimate:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 133
    iget-object v0, p0, Lcom/android/jrdsettings/widget/ChartNetworkSeriesView;->mPaintEstimate:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 134
    iget-object v0, p0, Lcom/android/jrdsettings/widget/ChartNetworkSeriesView;->mPaintEstimate:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/DashPathEffect;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    const/high16 v3, 0x3f80

    invoke-direct {v1, v2, v3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 135
    return-void

    .line 134
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x20t 0x41t
        0x0t 0x0t 0x20t 0x41t
    .end array-data
.end method

.method public setEndTime(J)V
    .locals 0
    .parameter "endTime"

    .prologue
    .line 294
    iput-wide p1, p0, Lcom/android/jrdsettings/widget/ChartNetworkSeriesView;->mEndTime:J

    .line 295
    return-void
.end method

.method public setEstimateVisible(Z)V
    .locals 1
    .parameter "estimateVisible"

    .prologue
    .line 298
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/jrdsettings/widget/ChartNetworkSeriesView;->mEstimateVisible:Z

    .line 299
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 300
    return-void
.end method

.method public setPrimaryRange(JJ)V
    .locals 0
    .parameter "left"
    .parameter "right"

    .prologue
    .line 153
    iput-wide p1, p0, Lcom/android/jrdsettings/widget/ChartNetworkSeriesView;->mPrimaryLeft:J

    .line 154
    iput-wide p3, p0, Lcom/android/jrdsettings/widget/ChartNetworkSeriesView;->mPrimaryRight:J

    .line 155
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 156
    return-void
.end method
