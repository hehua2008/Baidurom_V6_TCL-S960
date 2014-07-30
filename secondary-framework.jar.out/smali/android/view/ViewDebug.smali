.class public Landroid/view/ViewDebug;
.super Ljava/lang/Object;
.source "ViewDebug.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewDebug$ViewOperation;,
        Landroid/view/ViewDebug$RecyclerTraceType;,
        Landroid/view/ViewDebug$HierarchyTraceType;,
        Landroid/view/ViewDebug$HierarchyHandler;,
        Landroid/view/ViewDebug$CapturedViewProperty;,
        Landroid/view/ViewDebug$FlagToString;,
        Landroid/view/ViewDebug$IntToString;,
        Landroid/view/ViewDebug$ExportedProperty;
    }
.end annotation


# static fields
.field private static final CAPTURE_TIMEOUT:I = 0xfa0

.field public static final DEBUG_DRAG:Z = false

.field private static final REMOTE_COMMAND_CAPTURE:Ljava/lang/String; = "CAPTURE"

.field private static final REMOTE_COMMAND_CAPTURE_LAYERS:Ljava/lang/String; = "CAPTURE_LAYERS"

.field private static final REMOTE_COMMAND_DUMP:Ljava/lang/String; = "DUMP"

.field private static final REMOTE_COMMAND_INVALIDATE:Ljava/lang/String; = "INVALIDATE"

.field private static final REMOTE_COMMAND_OUTPUT_DISPLAYLIST:Ljava/lang/String; = "OUTPUT_DISPLAYLIST"

.field private static final REMOTE_COMMAND_REQUEST_LAYOUT:Ljava/lang/String; = "REQUEST_LAYOUT"

.field private static final REMOTE_COMMAND_TAT_DUMP:Ljava/lang/String; = "TAT_DUMP"

.field private static final REMOTE_COMMAND_TAT_DUMPVIEW:Ljava/lang/String; = "TAT_DUMPVIEW"

.field private static final REMOTE_COMMAND_TAT_FOCUSVIEW:Ljava/lang/String; = "TAT_FOCUSVIEW"

.field private static final REMOTE_COMMAND_TAT_REQUESTVIEW:Ljava/lang/String; = "TAT_REQUESTVIEW"

.field private static final REMOTE_COMMAND_TAT_SCROLLVIEW:Ljava/lang/String; = "TAT_SCROLLVIEW"

.field private static final REMOTE_COMMAND_TAT_SETEDITTEXT:Ljava/lang/String; = "TAT_SETEDITTEXT"

.field private static final REMOTE_PROFILE:Ljava/lang/String; = "PROFILE"

.field public static final TRACE_HIERARCHY:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TRACE_RECYCLER:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static mCapturedViewFieldsForClasses:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field private static mCapturedViewMethodsForClasses:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private static sAnnotations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/reflect/AccessibleObject;",
            "Landroid/view/ViewDebug$ExportedProperty;",
            ">;"
        }
    .end annotation
.end field

.field private static sFieldsForClasses:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field private static sMethodsForClasses:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 298
    sput-object v0, Landroid/view/ViewDebug;->mCapturedViewMethodsForClasses:Ljava/util/HashMap;

    .line 299
    sput-object v0, Landroid/view/ViewDebug;->mCapturedViewFieldsForClasses:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 636
    return-void
.end method

.method private static TATDumpView(Landroid/view/View;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 8
    .parameter "root"
    .parameter "clientStream"
    .parameter "parameter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 993
    const/4 v3, 0x0

    .line 994
    .local v3, out:Ljava/io/BufferedWriter;
    invoke-static {p0, p2}, Landroid/view/ViewDebug;->TATfindView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v5

    .line 997
    .local v5, view:Landroid/view/View;
    :try_start_0
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v6, Ljava/io/OutputStreamWriter;

    const-string v7, "utf-8"

    invoke-direct {v6, p1, v7}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    const v7, 0x8000

    invoke-direct {v4, v6, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 998
    .end local v3           #out:Ljava/io/BufferedWriter;
    .local v4, out:Ljava/io/BufferedWriter;
    if-eqz v5, :cond_3

    .line 999
    :try_start_1
    instance-of v6, v5, Landroid/view/ViewGroup;

    if-eqz v6, :cond_2

    .line 1000
    move-object v0, v5

    check-cast v0, Landroid/view/ViewGroup;

    move-object v2, v0

    .line 1001
    .local v2, group:Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v2, v4, v7}, Landroid/view/ViewDebug;->TATdumpViewHierarchyWithProperties(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/io/BufferedWriter;I)V

    .line 1009
    .end local v2           #group:Landroid/view/ViewGroup;
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->newLine()V

    .line 1010
    const-string v6, "DONE."

    invoke-virtual {v4, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1011
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1015
    if-eqz v4, :cond_0

    .line 1016
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V

    :cond_0
    move-object v3, v4

    .line 1019
    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    :cond_1
    :goto_1
    return-void

    .line 1004
    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    :cond_2
    :try_start_2
    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v5, v4, v7}, Landroid/view/ViewDebug;->TATdumpViewWithProperties(Landroid/content/Context;Landroid/view/View;Ljava/io/BufferedWriter;I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1012
    :catch_0
    move-exception v1

    move-object v3, v4

    .line 1013
    .end local v4           #out:Ljava/io/BufferedWriter;
    .local v1, e:Ljava/lang/Exception;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    :goto_2
    :try_start_3
    const-string v6, "View"

    const-string v7, "Problem TAT Dump view:"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1015
    if-eqz v3, :cond_1

    .line 1016
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    goto :goto_1

    .line 1007
    .end local v1           #e:Ljava/lang/Exception;
    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    :cond_3
    :try_start_4
    const-string v6, "NOT_FOUND"

    invoke-virtual {v4, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 1015
    :catchall_0
    move-exception v6

    move-object v3, v4

    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    :goto_3
    if-eqz v3, :cond_4

    .line 1016
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    .line 1015
    :cond_4
    throw v6

    :catchall_1
    move-exception v6

    goto :goto_3

    .line 1012
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method private static TATFocusView(Landroid/view/View;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 6
    .parameter "root"
    .parameter "clientStream"
    .parameter "parameter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1089
    const/4 v1, 0x0

    .line 1090
    .local v1, out:Ljava/io/BufferedWriter;
    invoke-static {p0, p2}, Landroid/view/ViewDebug;->TATfindView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 1092
    .local v3, view:Landroid/view/View;
    :try_start_0
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    const-string v5, "utf-8"

    invoke-direct {v4, p1, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/16 v5, 0x2000

    invoke-direct {v2, v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1093
    .end local v1           #out:Ljava/io/BufferedWriter;
    .local v2, out:Ljava/io/BufferedWriter;
    if-eqz v3, :cond_2

    .line 1094
    :try_start_1
    new-instance v4, Landroid/view/ViewDebug$8;

    invoke-direct {v4, v3}, Landroid/view/ViewDebug$8;-><init>(Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1102
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V

    .line 1103
    const-string v4, "DONE."

    invoke-virtual {v2, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1104
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1108
    if-eqz v2, :cond_0

    .line 1109
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    :cond_0
    move-object v1, v2

    .line 1112
    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v1       #out:Ljava/io/BufferedWriter;
    :cond_1
    :goto_1
    return-void

    .line 1100
    .end local v1           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    :cond_2
    :try_start_2
    const-string v4, "NOT_FOUND"

    invoke-virtual {v2, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1105
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 1106
    .end local v2           #out:Ljava/io/BufferedWriter;
    .local v0, e:Ljava/lang/Exception;
    .restart local v1       #out:Ljava/io/BufferedWriter;
    :goto_2
    :try_start_3
    const-string v4, "View"

    const-string v5, "Problem TATFocusView:"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1108
    if-eqz v1, :cond_1

    .line 1109
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    goto :goto_1

    .line 1108
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    :goto_3
    if-eqz v1, :cond_3

    .line 1109
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    .line 1108
    :cond_3
    throw v4

    .end local v1           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v1       #out:Ljava/io/BufferedWriter;
    goto :goto_3

    .line 1105
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method private static TATRequestView(Landroid/view/View;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 6
    .parameter "root"
    .parameter "clientStream"
    .parameter "parameter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1022
    const/4 v1, 0x0

    .line 1023
    .local v1, out:Ljava/io/BufferedWriter;
    invoke-static {p0, p2}, Landroid/view/ViewDebug;->TATfindView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 1026
    .local v3, view:Landroid/view/View;
    :try_start_0
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    const-string v5, "utf-8"

    invoke-direct {v4, p1, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    const v5, 0x8000

    invoke-direct {v2, v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1027
    .end local v1           #out:Ljava/io/BufferedWriter;
    .local v2, out:Ljava/io/BufferedWriter;
    if-eqz v3, :cond_2

    .line 1028
    :try_start_1
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v3, v2, v5}, Landroid/view/ViewDebug;->TATdumpViewWithProperties(Landroid/content/Context;Landroid/view/View;Ljava/io/BufferedWriter;I)Z

    .line 1032
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V

    .line 1033
    const-string v4, "DONE."

    invoke-virtual {v2, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1034
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1038
    if-eqz v2, :cond_0

    .line 1039
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    :cond_0
    move-object v1, v2

    .line 1042
    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v1       #out:Ljava/io/BufferedWriter;
    :cond_1
    :goto_1
    return-void

    .line 1030
    .end local v1           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    :cond_2
    :try_start_2
    const-string v4, "NOT_FOUND"

    invoke-virtual {v2, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1035
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 1036
    .end local v2           #out:Ljava/io/BufferedWriter;
    .local v0, e:Ljava/lang/Exception;
    .restart local v1       #out:Ljava/io/BufferedWriter;
    :goto_2
    :try_start_3
    const-string v4, "View"

    const-string v5, "Problem TATRequestView:"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1038
    if-eqz v1, :cond_1

    .line 1039
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    goto :goto_1

    .line 1038
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    :goto_3
    if-eqz v1, :cond_3

    .line 1039
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    .line 1038
    :cond_3
    throw v4

    .end local v1           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v1       #out:Ljava/io/BufferedWriter;
    goto :goto_3

    .line 1035
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method private static TATScrollView(Landroid/view/View;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 13
    .parameter "root"
    .parameter "clientStream"
    .parameter "parameters"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x2

    .line 1115
    const/4 v5, 0x0

    .line 1116
    .local v5, out:Ljava/io/BufferedWriter;
    const-string v10, " "

    invoke-virtual {p2, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 1117
    .local v7, params:[Ljava/lang/String;
    const/4 v10, 0x0

    aget-object v10, v7, v10

    invoke-static {p0, v10}, Landroid/view/ViewDebug;->TATfindView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v9

    .line 1119
    .local v9, view:Landroid/view/View;
    :try_start_0
    new-instance v6, Ljava/io/BufferedWriter;

    new-instance v10, Ljava/io/OutputStreamWriter;

    const-string v11, "utf-8"

    invoke-direct {v10, p1, v11}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/16 v11, 0x2000

    invoke-direct {v6, v10, v11}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1120
    .end local v5           #out:Ljava/io/BufferedWriter;
    .local v6, out:Ljava/io/BufferedWriter;
    if-eqz v9, :cond_6

    .line 1121
    :try_start_1
    instance-of v10, v9, Landroid/widget/AdapterView;

    if-eqz v10, :cond_3

    .line 1122
    array-length v10, v7

    if-lt v10, v12, :cond_2

    .line 1123
    const/4 v10, 0x1

    aget-object v10, v7, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 1124
    .local v8, position:I
    move-object v0, v9

    check-cast v0, Landroid/widget/AdapterView;

    move-object v1, v0

    .line 1125
    .local v1, adapterView:Landroid/widget/AdapterView;
    new-instance v10, Landroid/view/ViewDebug$9;

    invoke-direct {v10, v1, v8}, Landroid/view/ViewDebug$9;-><init>(Landroid/widget/AdapterView;I)V

    invoke-virtual {v1, v10}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1149
    .end local v1           #adapterView:Landroid/widget/AdapterView;
    .end local v8           #position:I
    :goto_0
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->newLine()V

    .line 1150
    const-string v10, "DONE."

    invoke-virtual {v6, v10}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1151
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1155
    if-eqz v6, :cond_0

    .line 1156
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V

    :cond_0
    move-object v5, v6

    .line 1159
    .end local v6           #out:Ljava/io/BufferedWriter;
    .restart local v5       #out:Ljava/io/BufferedWriter;
    :cond_1
    :goto_1
    return-void

    .line 1131
    .end local v5           #out:Ljava/io/BufferedWriter;
    .restart local v6       #out:Ljava/io/BufferedWriter;
    :cond_2
    :try_start_2
    const-string v10, "BAD_PARAMS"

    invoke-virtual {v6, v10}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1152
    :catch_0
    move-exception v4

    move-object v5, v6

    .line 1153
    .end local v6           #out:Ljava/io/BufferedWriter;
    .local v4, e:Ljava/lang/Exception;
    .restart local v5       #out:Ljava/io/BufferedWriter;
    :goto_2
    :try_start_3
    const-string v10, "View"

    const-string v11, "Problem TATScrollToView:"

    invoke-static {v10, v11, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1155
    if-eqz v5, :cond_1

    .line 1156
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V

    goto :goto_1

    .line 1134
    .end local v4           #e:Ljava/lang/Exception;
    .end local v5           #out:Ljava/io/BufferedWriter;
    .restart local v6       #out:Ljava/io/BufferedWriter;
    :cond_3
    :try_start_4
    array-length v10, v7

    const/4 v11, 0x3

    if-lt v10, v11, :cond_5

    .line 1135
    const/4 v10, 0x1

    aget-object v10, v7, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1136
    .local v2, dx:I
    const/4 v10, 0x2

    aget-object v10, v7, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1137
    .local v3, dy:I
    new-instance v10, Landroid/view/ViewDebug$10;

    invoke-direct {v10, v9, v2, v3}, Landroid/view/ViewDebug$10;-><init>(Landroid/view/View;II)V

    invoke-virtual {v9, v10}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 1155
    .end local v2           #dx:I
    .end local v3           #dy:I
    :catchall_0
    move-exception v10

    move-object v5, v6

    .end local v6           #out:Ljava/io/BufferedWriter;
    .restart local v5       #out:Ljava/io/BufferedWriter;
    :goto_3
    if-eqz v5, :cond_4

    .line 1156
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V

    .line 1155
    :cond_4
    throw v10

    .line 1143
    .end local v5           #out:Ljava/io/BufferedWriter;
    .restart local v6       #out:Ljava/io/BufferedWriter;
    :cond_5
    :try_start_5
    const-string v10, "BAD_PARAMS"

    invoke-virtual {v6, v10}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 1147
    :cond_6
    const-string v10, "NOT_FOUND"

    invoke-virtual {v6, v10}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    .line 1155
    .end local v6           #out:Ljava/io/BufferedWriter;
    .restart local v5       #out:Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v10

    goto :goto_3

    .line 1152
    :catch_1
    move-exception v4

    goto :goto_2
.end method

.method private static TATSetEditText(Landroid/view/View;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 11
    .parameter "root"
    .parameter "clientStream"
    .parameter "parameters"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1046
    const/4 v4, 0x0

    .line 1049
    .local v4, out:Ljava/io/BufferedWriter;
    const/16 v9, 0x20

    invoke-virtual {p2, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 1051
    .local v3, index:I
    const/4 v9, -0x1

    if-ne v3, v9, :cond_2

    .line 1052
    move-object v8, p2

    .line 1053
    .local v8, viewIdStr:Ljava/lang/String;
    const-string v6, ""

    .line 1059
    .local v6, typeStr:Ljava/lang/String;
    :goto_0
    invoke-static {p0, v8}, Landroid/view/ViewDebug;->TATfindView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v7

    .line 1061
    .local v7, view:Landroid/view/View;
    :try_start_0
    new-instance v5, Ljava/io/BufferedWriter;

    new-instance v9, Ljava/io/OutputStreamWriter;

    const-string v10, "utf-8"

    invoke-direct {v9, p1, v10}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/16 v10, 0x2000

    invoke-direct {v5, v9, v10}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1062
    .end local v4           #out:Ljava/io/BufferedWriter;
    .local v5, out:Ljava/io/BufferedWriter;
    if-eqz v7, :cond_4

    .line 1063
    :try_start_1
    instance-of v9, v7, Landroid/widget/EditText;

    if-eqz v9, :cond_3

    .line 1064
    move-object v0, v7

    check-cast v0, Landroid/widget/EditText;

    move-object v2, v0

    .line 1065
    .local v2, editText:Landroid/widget/EditText;
    new-instance v9, Landroid/view/ViewDebug$7;

    invoke-direct {v9, v2, v6}, Landroid/view/ViewDebug$7;-><init>(Landroid/widget/EditText;Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1076
    .end local v2           #editText:Landroid/widget/EditText;
    :goto_1
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->newLine()V

    .line 1077
    const-string v9, "DONE."

    invoke-virtual {v5, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1078
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1082
    if-eqz v5, :cond_0

    .line 1083
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V

    :cond_0
    move-object v4, v5

    .line 1086
    .end local v5           #out:Ljava/io/BufferedWriter;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    :cond_1
    :goto_2
    return-void

    .line 1055
    .end local v6           #typeStr:Ljava/lang/String;
    .end local v7           #view:Landroid/view/View;
    .end local v8           #viewIdStr:Ljava/lang/String;
    :cond_2
    const/4 v9, 0x0

    invoke-virtual {p2, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 1056
    .restart local v8       #viewIdStr:Ljava/lang/String;
    add-int/lit8 v9, v3, 0x1

    invoke-virtual {p2, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .restart local v6       #typeStr:Ljava/lang/String;
    goto :goto_0

    .line 1071
    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v5       #out:Ljava/io/BufferedWriter;
    .restart local v7       #view:Landroid/view/View;
    :cond_3
    :try_start_2
    const-string v9, "NOT_EDITTEXT"

    invoke-virtual {v5, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 1079
    :catch_0
    move-exception v1

    move-object v4, v5

    .line 1080
    .end local v5           #out:Ljava/io/BufferedWriter;
    .local v1, e:Ljava/lang/Exception;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    :goto_3
    :try_start_3
    const-string v9, "View"

    const-string v10, "Problem TATSetEditText:"

    invoke-static {v9, v10, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1082
    if-eqz v4, :cond_1

    .line 1083
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V

    goto :goto_2

    .line 1074
    .end local v1           #e:Ljava/lang/Exception;
    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v5       #out:Ljava/io/BufferedWriter;
    :cond_4
    :try_start_4
    const-string v9, "NOT_FOUND"

    invoke-virtual {v5, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 1082
    :catchall_0
    move-exception v9

    move-object v4, v5

    .end local v5           #out:Ljava/io/BufferedWriter;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    :goto_4
    if-eqz v4, :cond_5

    .line 1083
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V

    .line 1082
    :cond_5
    throw v9

    :catchall_1
    move-exception v9

    goto :goto_4

    .line 1079
    :catch_1
    move-exception v1

    goto :goto_3
.end method

.method private static TATdump(Landroid/view/View;Ljava/io/OutputStream;)V
    .locals 8
    .parameter "root"
    .parameter "clientStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 856
    const/4 v3, 0x0

    .line 859
    .local v3, out:Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v6, Ljava/io/OutputStreamWriter;

    const-string v7, "utf-8"

    invoke-direct {v6, p1, v7}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    const v7, 0x8000

    invoke-direct {v4, v6, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 860
    .end local v3           #out:Ljava/io/BufferedWriter;
    .local v4, out:Ljava/io/BufferedWriter;
    :try_start_1
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v5

    .line 861
    .local v5, view:Landroid/view/View;
    instance-of v6, v5, Landroid/view/ViewGroup;

    if-eqz v6, :cond_0

    .line 862
    move-object v0, v5

    check-cast v0, Landroid/view/ViewGroup;

    move-object v2, v0

    .line 863
    .local v2, group:Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v2, v4, v7}, Landroid/view/ViewDebug;->TATdumpViewHierarchyWithProperties(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/io/BufferedWriter;I)V

    .line 865
    .end local v2           #group:Landroid/view/ViewGroup;
    :cond_0
    const-string v6, "DONE."

    invoke-virtual {v4, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 866
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 870
    if-eqz v4, :cond_1

    .line 871
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V

    :cond_1
    move-object v3, v4

    .line 874
    .end local v4           #out:Ljava/io/BufferedWriter;
    .end local v5           #view:Landroid/view/View;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    :cond_2
    :goto_0
    return-void

    .line 867
    :catch_0
    move-exception v1

    .line 868
    .local v1, e:Ljava/lang/Exception;
    :goto_1
    :try_start_2
    const-string v6, "View"

    const-string v7, "Problem dumping the view:"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 870
    if-eqz v3, :cond_2

    .line 871
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    goto :goto_0

    .line 870
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    :goto_2
    if-eqz v3, :cond_3

    .line 871
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    .line 870
    :cond_3
    throw v6

    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    goto :goto_2

    .line 867
    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    :catch_1
    move-exception v1

    move-object v3, v4

    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    goto :goto_1
.end method

.method private static TATdumpViewHierarchyWithProperties(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/io/BufferedWriter;I)V
    .locals 4
    .parameter "context"
    .parameter "group"
    .parameter "out"
    .parameter "level"

    .prologue
    .line 879
    invoke-static {p0, p1, p2, p3}, Landroid/view/ViewDebug;->TATdumpViewWithProperties(Landroid/content/Context;Landroid/view/View;Ljava/io/BufferedWriter;I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 895
    :cond_0
    return-void

    .line 883
    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 884
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 885
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 886
    .local v2, view:Landroid/view/View;
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_3

    .line 887
    check-cast v2, Landroid/view/ViewGroup;

    .end local v2           #view:Landroid/view/View;
    add-int/lit8 v3, p3, 0x1

    invoke-static {p0, v2, p2, v3}, Landroid/view/ViewDebug;->TATdumpViewHierarchyWithProperties(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/io/BufferedWriter;I)V

    .line 884
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 890
    .restart local v2       #view:Landroid/view/View;
    :cond_3
    if-eqz v2, :cond_2

    .line 892
    add-int/lit8 v3, p3, 0x1

    invoke-static {p0, v2, p2, v3}, Landroid/view/ViewDebug;->TATdumpViewWithProperties(Landroid/content/Context;Landroid/view/View;Ljava/io/BufferedWriter;I)Z

    goto :goto_1
.end method

.method private static TATdumpViewWithProperties(Landroid/content/Context;Landroid/view/View;Ljava/io/BufferedWriter;I)Z
    .locals 14
    .parameter "context"
    .parameter "view"
    .parameter "out"
    .parameter "level"

    .prologue
    .line 905
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    move/from16 v0, p3

    if-ge v4, v0, :cond_0

    .line 906
    const/16 v11, 0x20

    :try_start_0
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/BufferedWriter;->write(I)V

    .line 905
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 910
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 911
    const/16 v11, 0x40

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/BufferedWriter;->write(I)V

    .line 912
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 915
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    .line 916
    .local v5, id:I
    if-ltz v5, :cond_5

    .line 918
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v9

    .line 920
    .local v9, resources:Landroid/content/res/Resources;
    :try_start_1
    const-string v11, ",id="

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 921
    invoke-virtual {v9, v5}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 931
    .end local v9           #resources:Landroid/content/res/Resources;
    :goto_1
    const/4 v11, 0x2

    :try_start_2
    new-array v6, v11, [I

    .line 932
    .local v6, lefttop:[I
    invoke-virtual {p1, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 935
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 936
    .local v8, mRect:Landroid/graphics/Rect;
    invoke-virtual {p1, v8}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 939
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ",left="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x0

    aget v12, v6, v12

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 940
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ",top="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x1

    aget v12, v6, v12

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 941
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ",right="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x0

    aget v12, v6, v12

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v13

    add-int/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 942
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ",bottom="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x1

    aget v12, v6, v12

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v13

    add-int/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 945
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ",willNotDraw="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p1}, Landroid/view/View;->willNotDraw()Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 946
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ",isShown="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 947
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ",isEnabled="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 948
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ",isFocusable="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p1}, Landroid/view/View;->isFocusable()Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 949
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ",isFocused="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 950
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ",isSelected="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 953
    instance-of v11, p1, Landroid/widget/CompoundButton;

    if-eqz v11, :cond_1

    .line 954
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ",isChecked="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v0, p1

    check-cast v0, Landroid/widget/CompoundButton;

    move-object v11, v0

    invoke-virtual {v11}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 956
    :cond_1
    instance-of v11, p1, Landroid/widget/CheckedTextView;

    if-eqz v11, :cond_2

    .line 957
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ",isChecked="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v0, p1

    check-cast v0, Landroid/widget/CheckedTextView;

    move-object v11, v0

    invoke-virtual {v11}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 961
    :cond_2
    instance-of v11, p1, Landroid/widget/TextView;

    if-eqz v11, :cond_3

    .line 962
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    move-object v11, v0

    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 963
    .local v10, text:Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_3

    .line 965
    const-string v11, ",text="

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 966
    const-string v11, "\n"

    const-string v12, "\\n"

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 971
    .end local v10           #text:Ljava/lang/String;
    :cond_3
    instance-of v11, p1, Landroid/widget/AdapterView;

    if-eqz v11, :cond_4

    .line 972
    move-object v0, p1

    check-cast v0, Landroid/widget/AdapterView;

    move-object v11, v0

    invoke-virtual {v11}, Landroid/widget/AdapterView;->getCount()I

    move-result v1

    .line 973
    .local v1, cocunt:I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ",count="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 975
    move-object v0, p1

    check-cast v0, Landroid/widget/AdapterView;

    move-object v11, v0

    invoke-virtual {v11}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v3

    .line 976
    .local v3, fpos:I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ",fpos="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 978
    check-cast p1, Landroid/widget/AdapterView;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v7

    .line 979
    .local v7, lpos:I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ",lpos="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 982
    .end local v1           #cocunt:I
    .end local v3           #fpos:I
    .end local v7           #lpos:I
    :cond_4
    invoke-virtual/range {p2 .. p2}, Ljava/io/BufferedWriter;->newLine()V

    .line 989
    const/4 v11, 0x1

    .end local v5           #id:I
    .end local v6           #lefttop:[I
    .end local v8           #mRect:Landroid/graphics/Rect;
    :goto_2
    return v11

    .line 922
    .restart local v5       #id:I
    .restart local v9       #resources:Landroid/content/res/Resources;
    .restart local p1
    :catch_0
    move-exception v2

    .line 923
    .local v2, e:Landroid/content/res/Resources$NotFoundException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "0x"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 984
    .end local v2           #e:Landroid/content/res/Resources$NotFoundException;
    .end local v5           #id:I
    .end local v9           #resources:Landroid/content/res/Resources;
    .end local p1
    :catch_1
    move-exception v2

    .line 985
    .local v2, e:Ljava/io/IOException;
    const-string v11, "View"

    const-string v12, "Error while dumping hierarchy tree"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    const/4 v11, 0x0

    goto :goto_2

    .line 927
    .end local v2           #e:Ljava/io/IOException;
    .restart local v5       #id:I
    .restart local p1
    :cond_5
    :try_start_3
    const-string v11, "id=NO_ID"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1
.end method

.method private static TATfindView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;
    .locals 10
    .parameter "root"
    .parameter "parameter"

    .prologue
    const/16 v9, 0x10

    const/4 v6, 0x0

    .line 830
    const/16 v7, 0x40

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_1

    .line 831
    const-string v7, "@"

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 832
    .local v4, ids:[Ljava/lang/String;
    const/4 v7, 0x0

    aget-object v0, v4, v7

    .line 833
    .local v0, className:Ljava/lang/String;
    const/4 v7, 0x1

    aget-object v7, v4, v7

    invoke-static {v7, v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v7

    long-to-int v2, v7

    .line 835
    .local v2, hashCode:I
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v5

    .line 836
    .local v5, view:Landroid/view/View;
    instance-of v7, v5, Landroid/view/ViewGroup;

    if-eqz v7, :cond_0

    .line 837
    check-cast v5, Landroid/view/ViewGroup;

    .end local v5           #view:Landroid/view/View;
    invoke-static {v5, v0, v2}, Landroid/view/ViewDebug;->findView(Landroid/view/ViewGroup;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v6

    .line 852
    .end local v0           #className:Ljava/lang/String;
    .end local v2           #hashCode:I
    .end local v4           #ids:[Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v6

    .line 841
    :cond_1
    const-string v7, "0x"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 842
    const/4 v6, 0x2

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 843
    .local v1, dynId:I
    const-string v6, "View"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Dynamic ID :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    goto :goto_0

    .line 848
    .end local v1           #dynId:I
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, p1, v6, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 849
    .local v3, id:I
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    goto :goto_0
.end method

.method private static capture(Landroid/view/View;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 7
    .parameter "root"
    .parameter "clientStream"
    .parameter "parameter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 751
    invoke-static {p0, p2}, Landroid/view/ViewDebug;->findView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 752
    .local v1, captureView:Landroid/view/View;
    const/4 v4, 0x0

    invoke-static {v1, v4}, Landroid/view/ViewDebug;->performViewCapture(Landroid/view/View;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 754
    .local v0, b:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 755
    const-string v4, "View"

    const-string v5, "Failed to create capture bitmap!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v6, v6, v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 762
    :cond_0
    const/4 v2, 0x0

    .line 764
    .local v2, out:Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/BufferedOutputStream;

    const v4, 0x8000

    invoke-direct {v3, p1, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 765
    .end local v2           #out:Ljava/io/BufferedOutputStream;
    .local v3, out:Ljava/io/BufferedOutputStream;
    :try_start_1
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v0, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 766
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 768
    if-eqz v3, :cond_1

    .line 769
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V

    .line 771
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 773
    return-void

    .line 768
    .end local v3           #out:Ljava/io/BufferedOutputStream;
    .restart local v2       #out:Ljava/io/BufferedOutputStream;
    :catchall_0
    move-exception v4

    :goto_0
    if-eqz v2, :cond_2

    .line 769
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V

    .line 771
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 768
    throw v4

    .end local v2           #out:Ljava/io/BufferedOutputStream;
    .restart local v3       #out:Ljava/io/BufferedOutputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #out:Ljava/io/BufferedOutputStream;
    .restart local v2       #out:Ljava/io/BufferedOutputStream;
    goto :goto_0
.end method

.method private static captureLayers(Landroid/view/View;Ljava/io/DataOutputStream;)V
    .locals 3
    .parameter "root"
    .parameter "clientStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 680
    :try_start_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 682
    .local v0, outRect:Landroid/graphics/Rect;
    :try_start_1
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mSession:Landroid/view/IWindowSession;

    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mWindow:Landroid/view/IWindow;

    invoke-interface {v1, v2, v0}, Landroid/view/IWindowSession;->getDisplayFrame(Landroid/view/IWindow;Landroid/graphics/Rect;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 687
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 688
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 690
    const/4 v1, 0x1

    invoke-static {p0, p1, v1}, Landroid/view/ViewDebug;->captureViewLayer(Landroid/view/View;Ljava/io/DataOutputStream;Z)V

    .line 692
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->write(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 694
    invoke-virtual {p1}, Ljava/io/FilterOutputStream;->close()V

    .line 696
    return-void

    .line 694
    .end local v0           #outRect:Landroid/graphics/Rect;
    :catchall_0
    move-exception v1

    invoke-virtual {p1}, Ljava/io/FilterOutputStream;->close()V

    throw v1

    .line 683
    .restart local v0       #outRect:Landroid/graphics/Rect;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static captureViewLayer(Landroid/view/View;Ljava/io/DataOutputStream;Z)V
    .locals 13
    .parameter "view"
    .parameter "clientStream"
    .parameter "visible"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 701
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-nez v11, :cond_3

    if-eqz p2, :cond_3

    move v6, v9

    .line 703
    .local v6, localVisible:Z
    :goto_0
    iget v11, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v11, v11, 0x80

    const/16 v12, 0x80

    if-eq v11, v12, :cond_2

    .line 704
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v5

    .line 705
    .local v5, id:I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    .line 706
    .local v7, name:Ljava/lang/String;
    const/4 v11, -0x1

    if-eq v5, v11, :cond_0

    .line 707
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11, v5}, Landroid/view/ViewDebug;->resolveId(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 710
    :cond_0
    invoke-virtual {p1, v9}, Ljava/io/DataOutputStream;->write(I)V

    .line 711
    invoke-virtual {p1, v7}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 712
    if-eqz v6, :cond_4

    move v11, v9

    :goto_1
    invoke-virtual {p1, v11}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 714
    const/4 v11, 0x2

    new-array v8, v11, [I

    .line 716
    .local v8, position:[I
    invoke-virtual {p0, v8}, Landroid/view/View;->getLocationInWindow([I)V

    .line 718
    aget v10, v8, v10

    invoke-virtual {p1, v10}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 719
    aget v10, v8, v9

    invoke-virtual {p1, v10}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 720
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V

    .line 722
    invoke-static {p0, v9}, Landroid/view/ViewDebug;->performViewCapture(Landroid/view/View;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 723
    .local v1, b:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_1

    .line 724
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    mul-int/2addr v9, v10

    mul-int/lit8 v9, v9, 0x2

    invoke-direct {v0, v9}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 726
    .local v0, arrayOut:Ljava/io/ByteArrayOutputStream;
    sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v10, 0x64

    invoke-virtual {v1, v9, v10, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 727
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v9

    invoke-virtual {p1, v9}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 728
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 730
    .end local v0           #arrayOut:Ljava/io/ByteArrayOutputStream;
    :cond_1
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V

    .line 733
    .end local v1           #b:Landroid/graphics/Bitmap;
    .end local v5           #id:I
    .end local v7           #name:Ljava/lang/String;
    .end local v8           #position:[I
    :cond_2
    instance-of v9, p0, Landroid/view/ViewGroup;

    if-eqz v9, :cond_5

    move-object v3, p0

    .line 734
    check-cast v3, Landroid/view/ViewGroup;

    .line 735
    .local v3, group:Landroid/view/ViewGroup;
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 737
    .local v2, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    if-ge v4, v2, :cond_5

    .line 738
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-static {v9, p1, v6}, Landroid/view/ViewDebug;->captureViewLayer(Landroid/view/View;Ljava/io/DataOutputStream;Z)V

    .line 737
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .end local v2           #count:I
    .end local v3           #group:Landroid/view/ViewGroup;
    .end local v4           #i:I
    .end local v6           #localVisible:Z
    :cond_3
    move v6, v10

    .line 701
    goto/16 :goto_0

    .restart local v5       #id:I
    .restart local v6       #localVisible:Z
    .restart local v7       #name:Ljava/lang/String;
    :cond_4
    move v11, v10

    .line 712
    goto :goto_1

    .line 741
    .end local v5           #id:I
    .end local v7           #name:Ljava/lang/String;
    :cond_5
    return-void
.end method

.method private static capturedViewExportFields(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "obj"
    .parameter
    .parameter "prefix"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1692
    .local p1, klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-nez p0, :cond_0

    .line 1693
    const-string v7, "null"

    .line 1721
    :goto_0
    return-object v7

    .line 1696
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1697
    .local v5, sb:Ljava/lang/StringBuilder;
    invoke-static {p1}, Landroid/view/ViewDebug;->capturedViewGetPropertyFields(Ljava/lang/Class;)[Ljava/lang/reflect/Field;

    move-result-object v3

    .line 1699
    .local v3, fields:[Ljava/lang/reflect/Field;
    array-length v0, v3

    .line 1700
    .local v0, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v0, :cond_2

    .line 1701
    aget-object v1, v3, v4

    .line 1703
    .local v1, field:Ljava/lang/reflect/Field;
    :try_start_0
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1705
    .local v2, fieldValue:Ljava/lang/Object;
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1706
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1707
    const-string v7, "="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1709
    if-eqz v2, :cond_1

    .line 1710
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "\n"

    const-string v9, "\\n"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 1711
    .local v6, value:Ljava/lang/String;
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1715
    .end local v6           #value:Ljava/lang/String;
    :goto_2
    const/16 v7, 0x20

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1700
    .end local v2           #fieldValue:Ljava/lang/Object;
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1713
    .restart local v2       #fieldValue:Ljava/lang/Object;
    :cond_1
    const-string v7, "null"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1716
    .end local v2           #fieldValue:Ljava/lang/Object;
    :catch_0
    move-exception v7

    goto :goto_3

    .line 1721
    .end local v1           #field:Ljava/lang/reflect/Field;
    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0
.end method

.method private static capturedViewExportMethods(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "obj"
    .parameter
    .parameter "prefix"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1649
    .local p1, klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-nez p0, :cond_0

    .line 1650
    const-string v9, "null"

    .line 1688
    :goto_0
    return-object v9

    .line 1653
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1654
    .local v7, sb:Ljava/lang/StringBuilder;
    invoke-static {p1}, Landroid/view/ViewDebug;->capturedViewGetPropertyMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object v4

    .line 1656
    .local v4, methods:[Ljava/lang/reflect/Method;
    array-length v0, v4

    .line 1657
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 1658
    aget-object v2, v4, v1

    .line 1660
    .local v2, method:Ljava/lang/reflect/Method;
    const/4 v9, 0x0

    :try_start_0
    check-cast v9, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1661
    .local v3, methodValue:Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v6

    .line 1663
    .local v6, returnType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-class v9, Landroid/view/ViewDebug$CapturedViewProperty;

    invoke-virtual {v2, v9}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Landroid/view/ViewDebug$CapturedViewProperty;

    .line 1664
    .local v5, property:Landroid/view/ViewDebug$CapturedViewProperty;
    invoke-interface {v5}, Landroid/view/ViewDebug$CapturedViewProperty;->retrieveReturn()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1666
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "#"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v6, v9}, Landroid/view/ViewDebug;->capturedViewExportMethods(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1657
    .end local v3           #methodValue:Ljava/lang/Object;
    .end local v5           #property:Landroid/view/ViewDebug$CapturedViewProperty;
    .end local v6           #returnType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1668
    .restart local v3       #methodValue:Ljava/lang/Object;
    .restart local v5       #property:Landroid/view/ViewDebug$CapturedViewProperty;
    .restart local v6       #returnType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_1
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1669
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1670
    const-string v9, "()="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1672
    if-eqz v3, :cond_2

    .line 1673
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "\n"

    const-string v11, "\\n"

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 1674
    .local v8, value:Ljava/lang/String;
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1678
    .end local v8           #value:Ljava/lang/String;
    :goto_3
    const-string v9, "; "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1680
    .end local v3           #methodValue:Ljava/lang/Object;
    .end local v5           #property:Landroid/view/ViewDebug$CapturedViewProperty;
    .end local v6           #returnType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_0
    move-exception v9

    goto :goto_2

    .line 1676
    .restart local v3       #methodValue:Ljava/lang/Object;
    .restart local v5       #property:Landroid/view/ViewDebug$CapturedViewProperty;
    .restart local v6       #returnType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_2
    const-string v9, "null"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_3

    .line 1683
    .end local v3           #methodValue:Ljava/lang/Object;
    .end local v5           #property:Landroid/view/ViewDebug$CapturedViewProperty;
    .end local v6           #returnType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_1
    move-exception v9

    goto :goto_2

    .line 1688
    .end local v2           #method:Ljava/lang/reflect/Method;
    :cond_3
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_0
.end method

.method private static capturedViewGetPropertyFields(Ljava/lang/Class;)[Ljava/lang/reflect/Field;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .prologue
    .line 1587
    .local p0, klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget-object v7, Landroid/view/ViewDebug;->mCapturedViewFieldsForClasses:Ljava/util/HashMap;

    if-nez v7, :cond_0

    .line 1588
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    sput-object v7, Landroid/view/ViewDebug;->mCapturedViewFieldsForClasses:Ljava/util/HashMap;

    .line 1590
    :cond_0
    sget-object v6, Landroid/view/ViewDebug;->mCapturedViewFieldsForClasses:Ljava/util/HashMap;

    .line 1592
    .local v6, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    invoke-virtual {v6, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/reflect/Field;

    .line 1593
    .local v2, fields:[Ljava/lang/reflect/Field;
    if-eqz v2, :cond_1

    move-object v3, v2

    .line 1612
    .end local v2           #fields:[Ljava/lang/reflect/Field;
    .local v3, fields:[Ljava/lang/reflect/Field;
    :goto_0
    return-object v3

    .line 1597
    .end local v3           #fields:[Ljava/lang/reflect/Field;
    .restart local v2       #fields:[Ljava/lang/reflect/Field;
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1598
    .local v4, foundFields:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/reflect/Field;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 1600
    array-length v0, v2

    .line 1601
    .local v0, count:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v0, :cond_3

    .line 1602
    aget-object v1, v2, v5

    .line 1603
    .local v1, field:Ljava/lang/reflect/Field;
    const-class v7, Landroid/view/ViewDebug$CapturedViewProperty;

    invoke-virtual {v1, v7}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1604
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 1605
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1601
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1609
    .end local v1           #field:Ljava/lang/reflect/Field;
    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/reflect/Field;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .end local v2           #fields:[Ljava/lang/reflect/Field;
    check-cast v2, [Ljava/lang/reflect/Field;

    .line 1610
    .restart local v2       #fields:[Ljava/lang/reflect/Field;
    invoke-virtual {v6, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v2

    .line 1612
    .end local v2           #fields:[Ljava/lang/reflect/Field;
    .restart local v3       #fields:[Ljava/lang/reflect/Field;
    goto :goto_0
.end method

.method private static capturedViewGetPropertyMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 1616
    .local p0, klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget-object v7, Landroid/view/ViewDebug;->mCapturedViewMethodsForClasses:Ljava/util/HashMap;

    if-nez v7, :cond_0

    .line 1617
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    sput-object v7, Landroid/view/ViewDebug;->mCapturedViewMethodsForClasses:Ljava/util/HashMap;

    .line 1619
    :cond_0
    sget-object v3, Landroid/view/ViewDebug;->mCapturedViewMethodsForClasses:Ljava/util/HashMap;

    .line 1621
    .local v3, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Class<*>;[Ljava/lang/reflect/Method;>;"
    invoke-virtual {v3, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/reflect/Method;

    .line 1622
    .local v5, methods:[Ljava/lang/reflect/Method;
    if-eqz v5, :cond_1

    move-object v6, v5

    .line 1643
    .end local v5           #methods:[Ljava/lang/reflect/Method;
    .local v6, methods:[Ljava/lang/reflect/Method;
    :goto_0
    return-object v6

    .line 1626
    .end local v6           #methods:[Ljava/lang/reflect/Method;
    .restart local v5       #methods:[Ljava/lang/reflect/Method;
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1627
    .local v1, foundMethods:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/reflect/Method;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v5

    .line 1629
    array-length v0, v5

    .line 1630
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_3

    .line 1631
    aget-object v4, v5, v2

    .line 1632
    .local v4, method:Ljava/lang/reflect/Method;
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    array-length v7, v7

    if-nez v7, :cond_2

    const-class v7, Landroid/view/ViewDebug$CapturedViewProperty;

    invoke-virtual {v4, v7}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v7

    const-class v8, Ljava/lang/Void;

    if-eq v7, v8, :cond_2

    .line 1635
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 1636
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1630
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1640
    .end local v4           #method:Ljava/lang/reflect/Method;
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/reflect/Method;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    .end local v5           #methods:[Ljava/lang/reflect/Method;
    check-cast v5, [Ljava/lang/reflect/Method;

    .line 1641
    .restart local v5       #methods:[Ljava/lang/reflect/Method;
    invoke-virtual {v3, p0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v5

    .line 1643
    .end local v5           #methods:[Ljava/lang/reflect/Method;
    .restart local v6       #methods:[Ljava/lang/reflect/Method;
    goto :goto_0
.end method

.method static dispatchCommand(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 3
    .parameter "view"
    .parameter "command"
    .parameter "parameters"
    .parameter "clientStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 429
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    .line 431
    const-string v1, "DUMP"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 432
    invoke-static {p0, p3}, Landroid/view/ViewDebug;->dump(Landroid/view/View;Ljava/io/OutputStream;)V

    .line 476
    :cond_0
    :goto_0
    return-void

    .line 433
    :cond_1
    const-string v1, "TAT_DUMP"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 437
    invoke-static {p0, p3}, Landroid/view/ViewDebug;->TATdump(Landroid/view/View;Ljava/io/OutputStream;)V

    goto :goto_0

    .line 439
    :cond_2
    const-string v1, "CAPTURE_LAYERS"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 440
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, p3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-static {p0, v1}, Landroid/view/ViewDebug;->captureLayers(Landroid/view/View;Ljava/io/DataOutputStream;)V

    goto :goto_0

    .line 441
    :cond_3
    const-string v1, "TAT_SETEDITTEXT"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 445
    invoke-static {p0, p3, p2}, Landroid/view/ViewDebug;->TATSetEditText(Landroid/view/View;Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_0

    .line 446
    :cond_4
    const-string v1, "TAT_SCROLLVIEW"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 449
    invoke-static {p0, p3, p2}, Landroid/view/ViewDebug;->TATScrollView(Landroid/view/View;Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_0

    .line 452
    :cond_5
    const-string v1, " "

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 453
    .local v0, params:[Ljava/lang/String;
    const-string v1, "CAPTURE"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 454
    aget-object v1, v0, v2

    invoke-static {p0, p3, v1}, Landroid/view/ViewDebug;->capture(Landroid/view/View;Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_0

    .line 455
    :cond_6
    const-string v1, "OUTPUT_DISPLAYLIST"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 456
    aget-object v1, v0, v2

    invoke-static {p0, v1}, Landroid/view/ViewDebug;->outputDisplayList(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 457
    :cond_7
    const-string v1, "INVALIDATE"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 458
    aget-object v1, v0, v2

    invoke-static {p0, v1}, Landroid/view/ViewDebug;->invalidate(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 459
    :cond_8
    const-string v1, "REQUEST_LAYOUT"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 460
    aget-object v1, v0, v2

    invoke-static {p0, v1}, Landroid/view/ViewDebug;->requestLayout(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 461
    :cond_9
    const-string v1, "PROFILE"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 462
    aget-object v1, v0, v2

    invoke-static {p0, p3, v1}, Landroid/view/ViewDebug;->profile(Landroid/view/View;Ljava/io/OutputStream;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 466
    :cond_a
    const-string v1, "TAT_DUMPVIEW"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 467
    aget-object v1, v0, v2

    invoke-static {p0, p3, v1}, Landroid/view/ViewDebug;->TATDumpView(Landroid/view/View;Ljava/io/OutputStream;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 468
    :cond_b
    const-string v1, "TAT_REQUESTVIEW"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 469
    aget-object v1, v0, v2

    invoke-static {p0, p3, v1}, Landroid/view/ViewDebug;->TATRequestView(Landroid/view/View;Ljava/io/OutputStream;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 470
    :cond_c
    const-string v1, "TAT_FOCUSVIEW"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 471
    aget-object v1, v0, v2

    invoke-static {p0, p3, v1}, Landroid/view/ViewDebug;->TATFocusView(Landroid/view/View;Ljava/io/OutputStream;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static dump(Landroid/view/View;Ljava/io/OutputStream;)V
    .locals 8
    .parameter "root"
    .parameter "clientStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 806
    const/4 v3, 0x0

    .line 808
    .local v3, out:Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v6, Ljava/io/OutputStreamWriter;

    const-string v7, "utf-8"

    invoke-direct {v6, p1, v7}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    const v7, 0x8000

    invoke-direct {v4, v6, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 809
    .end local v3           #out:Ljava/io/BufferedWriter;
    .local v4, out:Ljava/io/BufferedWriter;
    :try_start_1
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v5

    .line 810
    .local v5, view:Landroid/view/View;
    instance-of v6, v5, Landroid/view/ViewGroup;

    if-eqz v6, :cond_0

    .line 811
    move-object v0, v5

    check-cast v0, Landroid/view/ViewGroup;

    move-object v2, v0

    .line 812
    .local v2, group:Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v2, v4, v7}, Landroid/view/ViewDebug;->dumpViewHierarchyWithProperties(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/io/BufferedWriter;I)V

    .line 814
    .end local v2           #group:Landroid/view/ViewGroup;
    :cond_0
    const-string v6, "DONE."

    invoke-virtual {v4, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 815
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 819
    if-eqz v4, :cond_1

    .line 820
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V

    :cond_1
    move-object v3, v4

    .line 823
    .end local v4           #out:Ljava/io/BufferedWriter;
    .end local v5           #view:Landroid/view/View;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    :cond_2
    :goto_0
    return-void

    .line 816
    :catch_0
    move-exception v1

    .line 817
    .local v1, e:Ljava/lang/Exception;
    :goto_1
    :try_start_2
    const-string v6, "View"

    const-string v7, "Problem dumping the view:"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 819
    if-eqz v3, :cond_2

    .line 820
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    goto :goto_0

    .line 819
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    :goto_2
    if-eqz v3, :cond_3

    .line 820
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    .line 819
    :cond_3
    throw v6

    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    goto :goto_2

    .line 816
    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    :catch_1
    move-exception v1

    move-object v3, v4

    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    goto :goto_1
.end method

.method public static dumpCapturedView(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .parameter "tag"
    .parameter "view"

    .prologue
    .line 1732
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1733
    .local v0, klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1734
    .local v1, sb:Ljava/lang/StringBuilder;
    const-string v2, ""

    invoke-static {p1, v0, v2}, Landroid/view/ViewDebug;->capturedViewExportFields(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1735
    const-string v2, ""

    invoke-static {p1, v0, v2}, Landroid/view/ViewDebug;->capturedViewExportMethods(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1736
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1737
    return-void
.end method

.method private static dumpViewHierarchyWithProperties(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/io/BufferedWriter;I)V
    .locals 4
    .parameter "context"
    .parameter "group"
    .parameter "out"
    .parameter "level"

    .prologue
    .line 1197
    invoke-static {p0, p1, p2, p3}, Landroid/view/ViewDebug;->dumpViewWithProperties(Landroid/content/Context;Landroid/view/View;Ljava/io/BufferedWriter;I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1213
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 1201
    .restart local p1
    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1202
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 1203
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1204
    .local v2, view:Landroid/view/View;
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    .line 1205
    check-cast v2, Landroid/view/ViewGroup;

    .end local v2           #view:Landroid/view/View;
    add-int/lit8 v3, p3, 0x1

    invoke-static {p0, v2, p2, v3}, Landroid/view/ViewDebug;->dumpViewHierarchyWithProperties(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/io/BufferedWriter;I)V

    .line 1202
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1207
    .restart local v2       #view:Landroid/view/View;
    :cond_2
    add-int/lit8 v3, p3, 0x1

    invoke-static {p0, v2, p2, v3}, Landroid/view/ViewDebug;->dumpViewWithProperties(Landroid/content/Context;Landroid/view/View;Ljava/io/BufferedWriter;I)Z

    goto :goto_2

    .line 1210
    .end local v2           #view:Landroid/view/View;
    :cond_3
    instance-of v3, p1, Landroid/view/ViewDebug$HierarchyHandler;

    if-eqz v3, :cond_0

    .line 1211
    check-cast p1, Landroid/view/ViewDebug$HierarchyHandler;

    .end local p1
    add-int/lit8 v3, p3, 0x1

    invoke-interface {p1, p2, v3}, Landroid/view/ViewDebug$HierarchyHandler;->dumpViewHierarchyWithProperties(Ljava/io/BufferedWriter;I)V

    goto :goto_0
.end method

.method private static dumpViewProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;)V
    .locals 1
    .parameter "context"
    .parameter "view"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1308
    const-string v0, ""

    invoke-static {p0, p1, p2, v0}, Landroid/view/ViewDebug;->dumpViewProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;Ljava/lang/String;)V

    .line 1309
    return-void
.end method

.method private static dumpViewProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "view"
    .parameter "out"
    .parameter "prefix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1314
    if-nez p1, :cond_0

    .line 1315
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=4,null "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1325
    :goto_0
    return-void

    .line 1319
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1321
    .local v0, klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_1
    invoke-static {p0, p1, p2, v0, p3}, Landroid/view/ViewDebug;->exportFields(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;Ljava/lang/Class;Ljava/lang/String;)V

    .line 1322
    invoke-static {p0, p1, p2, v0, p3}, Landroid/view/ViewDebug;->exportMethods(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;Ljava/lang/Class;Ljava/lang/String;)V

    .line 1323
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 1324
    const-class v1, Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    goto :goto_0
.end method

.method private static dumpViewWithProperties(Landroid/content/Context;Landroid/view/View;Ljava/io/BufferedWriter;I)Z
    .locals 4
    .parameter "context"
    .parameter "view"
    .parameter "out"
    .parameter "level"

    .prologue
    .line 1219
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, p3, :cond_0

    .line 1220
    const/16 v2, 0x20

    :try_start_0
    invoke-virtual {p2, v2}, Ljava/io/BufferedWriter;->write(I)V

    .line 1219
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1222
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1223
    const/16 v2, 0x40

    invoke-virtual {p2, v2}, Ljava/io/BufferedWriter;->write(I)V

    .line 1224
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1225
    const/16 v2, 0x20

    invoke-virtual {p2, v2}, Ljava/io/BufferedWriter;->write(I)V

    .line 1226
    invoke-static {p0, p1, p2}, Landroid/view/ViewDebug;->dumpViewProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;)V

    .line 1227
    invoke-virtual {p2}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1232
    const/4 v2, 0x1

    :goto_1
    return v2

    .line 1228
    :catch_0
    move-exception v0

    .line 1229
    .local v0, e:Ljava/io/IOException;
    const-string v2, "View"

    const-string v3, "Error while dumping hierarchy tree"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static exportFields(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 23
    .parameter "context"
    .parameter "view"
    .parameter "out"
    .parameter
    .parameter "prefix"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Object;",
            "Ljava/io/BufferedWriter;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1403
    .local p3, klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static/range {p3 .. p3}, Landroid/view/ViewDebug;->getExportedPropertyFields(Ljava/lang/Class;)[Ljava/lang/reflect/Field;

    move-result-object v12

    .line 1405
    .local v12, fields:[Ljava/lang/reflect/Field;
    array-length v9, v12

    .line 1406
    .local v9, count:I
    const/4 v14, 0x0

    .local v14, i:I
    :goto_0
    if-ge v14, v9, :cond_8

    .line 1407
    aget-object v10, v12, v14

    .line 1411
    .local v10, field:Ljava/lang/reflect/Field;
    const/4 v11, 0x0

    .line 1412
    .local v11, fieldValue:Ljava/lang/Object;
    :try_start_0
    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v22

    .line 1413
    .local v22, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget-object v2, Landroid/view/ViewDebug;->sAnnotations:Ljava/util/HashMap;

    invoke-virtual {v2, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewDebug$ExportedProperty;

    .line 1414
    .local v4, property:Landroid/view/ViewDebug$ExportedProperty;
    invoke-interface {v4}, Landroid/view/ViewDebug$ExportedProperty;->category()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Landroid/view/ViewDebug$ExportedProperty;->category()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1417
    .local v8, categoryPrefix:Ljava/lang/String;
    :goto_1
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v22

    if-ne v0, v2, :cond_7

    .line 1419
    invoke-interface {v4}, Landroid/view/ViewDebug$ExportedProperty;->resolveId()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz p0, :cond_3

    .line 1420
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v15

    .line 1421
    .local v15, id:I
    move-object/from16 v0, p0

    invoke-static {v0, v15}, Landroid/view/ViewDebug;->resolveId(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v11

    .line 1465
    .end local v11           #fieldValue:Ljava/lang/Object;
    .end local v15           #id:I
    :cond_0
    :goto_2
    if-nez v11, :cond_1

    .line 1466
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 1469
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v7, ""

    move-object/from16 v0, p2

    invoke-static {v0, v2, v3, v7, v11}, Landroid/view/ViewDebug;->writeEntry(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1406
    .end local v4           #property:Landroid/view/ViewDebug$ExportedProperty;
    .end local v8           #categoryPrefix:Ljava/lang/String;
    .end local v22           #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 1414
    .restart local v4       #property:Landroid/view/ViewDebug$ExportedProperty;
    .restart local v11       #fieldValue:Ljava/lang/Object;
    .restart local v22       #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_2
    const-string v8, ""

    goto :goto_1

    .line 1423
    .restart local v8       #categoryPrefix:Ljava/lang/String;
    :cond_3
    invoke-interface {v4}, Landroid/view/ViewDebug$ExportedProperty;->flagMapping()[Landroid/view/ViewDebug$FlagToString;

    move-result-object v13

    .line 1424
    .local v13, flagsMapping:[Landroid/view/ViewDebug$FlagToString;
    array-length v2, v13

    if-lez v2, :cond_4

    .line 1425
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v16

    .line 1426
    .local v16, intValue:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1428
    .local v6, valuePrefix:Ljava/lang/String;
    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-static {v0, v13, v1, v6}, Landroid/view/ViewDebug;->exportUnrolledFlags(Ljava/io/BufferedWriter;[Landroid/view/ViewDebug$FlagToString;ILjava/lang/String;)V

    .line 1431
    .end local v6           #valuePrefix:Ljava/lang/String;
    .end local v16           #intValue:I
    :cond_4
    invoke-interface {v4}, Landroid/view/ViewDebug$ExportedProperty;->mapping()[Landroid/view/ViewDebug$IntToString;

    move-result-object v19

    .line 1432
    .local v19, mapping:[Landroid/view/ViewDebug$IntToString;
    move-object/from16 v0, v19

    array-length v2, v0

    if-lez v2, :cond_0

    .line 1433
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v16

    .line 1434
    .restart local v16       #intValue:I
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v20, v0

    .line 1435
    .local v20, mappingCount:I
    const/16 v17, 0x0

    .local v17, j:I
    :goto_4
    move/from16 v0, v17

    move/from16 v1, v20

    if-ge v0, v1, :cond_5

    .line 1436
    aget-object v18, v19, v17

    .line 1437
    .local v18, mapped:Landroid/view/ViewDebug$IntToString;
    invoke-interface/range {v18 .. v18}, Landroid/view/ViewDebug$IntToString;->from()I

    move-result v2

    move/from16 v0, v16

    if-ne v2, v0, :cond_6

    .line 1438
    invoke-interface/range {v18 .. v18}, Landroid/view/ViewDebug$IntToString;->to()Ljava/lang/String;

    move-result-object v11

    .line 1443
    .end local v11           #fieldValue:Ljava/lang/Object;
    .end local v18           #mapped:Landroid/view/ViewDebug$IntToString;
    :cond_5
    if-nez v11, :cond_0

    .line 1444
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .local v11, fieldValue:Ljava/lang/Integer;
    goto/16 :goto_2

    .line 1435
    .local v11, fieldValue:Ljava/lang/Object;
    .restart local v18       #mapped:Landroid/view/ViewDebug$IntToString;
    :cond_6
    add-int/lit8 v17, v17, 0x1

    goto :goto_4

    .line 1448
    .end local v13           #flagsMapping:[Landroid/view/ViewDebug$FlagToString;
    .end local v16           #intValue:I
    .end local v17           #j:I
    .end local v18           #mapped:Landroid/view/ViewDebug$IntToString;
    .end local v19           #mapping:[Landroid/view/ViewDebug$IntToString;
    .end local v20           #mappingCount:I
    :cond_7
    const-class v2, [I

    move-object/from16 v0, v22

    if-ne v0, v2, :cond_9

    .line 1449
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    move-object v0, v2

    check-cast v0, [I

    move-object v5, v0

    .line 1450
    .local v5, array:[I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1451
    .restart local v6       #valuePrefix:Ljava/lang/String;
    const-string v21, ""

    .line 1453
    .local v21, suffix:Ljava/lang/String;
    const-string v7, ""

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    invoke-static/range {v2 .. v7}, Landroid/view/ViewDebug;->exportUnrolledArray(Landroid/content/Context;Ljava/io/BufferedWriter;Landroid/view/ViewDebug$ExportedProperty;[ILjava/lang/String;Ljava/lang/String;)V

    .line 1473
    .end local v4           #property:Landroid/view/ViewDebug$ExportedProperty;
    .end local v5           #array:[I
    .end local v6           #valuePrefix:Ljava/lang/String;
    .end local v8           #categoryPrefix:Ljava/lang/String;
    .end local v10           #field:Ljava/lang/reflect/Field;
    .end local v11           #fieldValue:Ljava/lang/Object;
    .end local v21           #suffix:Ljava/lang/String;
    .end local v22           #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_8
    return-void

    .line 1457
    .restart local v4       #property:Landroid/view/ViewDebug$ExportedProperty;
    .restart local v8       #categoryPrefix:Ljava/lang/String;
    .restart local v10       #field:Ljava/lang/reflect/Field;
    .restart local v11       #fieldValue:Ljava/lang/Object;
    .restart local v22       #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_9
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1458
    invoke-interface {v4}, Landroid/view/ViewDebug$ExportedProperty;->deepExport()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1459
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v4}, Landroid/view/ViewDebug$ExportedProperty;->prefix()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v2, v1, v3}, Landroid/view/ViewDebug;->dumpViewProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 1470
    .end local v4           #property:Landroid/view/ViewDebug$ExportedProperty;
    .end local v8           #categoryPrefix:Ljava/lang/String;
    .end local v11           #fieldValue:Ljava/lang/Object;
    .end local v22           #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_0
    move-exception v2

    goto/16 :goto_3
.end method

.method private static exportMethods(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 25
    .parameter "context"
    .parameter "view"
    .parameter "out"
    .parameter
    .parameter "prefix"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Object;",
            "Ljava/io/BufferedWriter;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1330
    .local p3, klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static/range {p3 .. p3}, Landroid/view/ViewDebug;->getExportedPropertyMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object v22

    .line 1332
    .local v22, methods:[Ljava/lang/reflect/Method;
    move-object/from16 v0, v22

    array-length v10, v0

    .line 1333
    .local v10, count:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    if-ge v12, v10, :cond_7

    .line 1334
    aget-object v20, v22, v12

    .line 1338
    .local v20, method:Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    :try_start_0
    check-cast v3, [Ljava/lang/Object;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    .line 1339
    .local v21, methodValue:Ljava/lang/Object;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v23

    .line 1340
    .local v23, returnType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget-object v3, Landroid/view/ViewDebug;->sAnnotations:Ljava/util/HashMap;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/ViewDebug$ExportedProperty;

    .line 1341
    .local v5, property:Landroid/view/ViewDebug$ExportedProperty;
    invoke-interface {v5}, Landroid/view/ViewDebug$ExportedProperty;->category()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v5}, Landroid/view/ViewDebug$ExportedProperty;->category()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1344
    .local v9, categoryPrefix:Ljava/lang/String;
    :goto_1
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v23

    if-ne v0, v3, :cond_6

    .line 1346
    invoke-interface {v5}, Landroid/view/ViewDebug$ExportedProperty;->resolveId()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz p0, :cond_2

    .line 1347
    check-cast v21, Ljava/lang/Integer;

    .end local v21           #methodValue:Ljava/lang/Object;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 1348
    .local v13, id:I
    move-object/from16 v0, p0

    invoke-static {v0, v13}, Landroid/view/ViewDebug;->resolveId(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v21

    .line 1393
    .end local v13           #id:I
    :cond_0
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v20 .. v20}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v8, "()"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-static {v0, v3, v4, v8, v1}, Landroid/view/ViewDebug;->writeEntry(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1333
    .end local v5           #property:Landroid/view/ViewDebug$ExportedProperty;
    .end local v9           #categoryPrefix:Ljava/lang/String;
    .end local v23           #returnType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 1341
    .restart local v5       #property:Landroid/view/ViewDebug$ExportedProperty;
    .restart local v21       #methodValue:Ljava/lang/Object;
    .restart local v23       #returnType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_1
    const-string v9, ""

    goto :goto_1

    .line 1350
    .restart local v9       #categoryPrefix:Ljava/lang/String;
    :cond_2
    invoke-interface {v5}, Landroid/view/ViewDebug$ExportedProperty;->flagMapping()[Landroid/view/ViewDebug$FlagToString;

    move-result-object v11

    .line 1351
    .local v11, flagsMapping:[Landroid/view/ViewDebug$FlagToString;
    array-length v3, v11

    if-lez v3, :cond_3

    .line 1352
    move-object/from16 v0, v21

    check-cast v0, Ljava/lang/Integer;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 1353
    .local v14, intValue:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v20 .. v20}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1355
    .local v7, valuePrefix:Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-static {v0, v11, v14, v7}, Landroid/view/ViewDebug;->exportUnrolledFlags(Ljava/io/BufferedWriter;[Landroid/view/ViewDebug$FlagToString;ILjava/lang/String;)V

    .line 1358
    .end local v7           #valuePrefix:Ljava/lang/String;
    .end local v14           #intValue:I
    :cond_3
    invoke-interface {v5}, Landroid/view/ViewDebug$ExportedProperty;->mapping()[Landroid/view/ViewDebug$IntToString;

    move-result-object v18

    .line 1359
    .local v18, mapping:[Landroid/view/ViewDebug$IntToString;
    move-object/from16 v0, v18

    array-length v3, v0

    if-lez v3, :cond_0

    .line 1360
    move-object/from16 v0, v21

    check-cast v0, Ljava/lang/Integer;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 1361
    .restart local v14       #intValue:I
    const/16 v16, 0x0

    .line 1362
    .local v16, mapped:Z
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    .line 1363
    .local v19, mappingCount:I
    const/4 v15, 0x0

    .local v15, j:I
    :goto_4
    move/from16 v0, v19

    if-ge v15, v0, :cond_4

    .line 1364
    aget-object v17, v18, v15

    .line 1365
    .local v17, mapper:Landroid/view/ViewDebug$IntToString;
    invoke-interface/range {v17 .. v17}, Landroid/view/ViewDebug$IntToString;->from()I

    move-result v3

    if-ne v3, v14, :cond_5

    .line 1366
    invoke-interface/range {v17 .. v17}, Landroid/view/ViewDebug$IntToString;->to()Ljava/lang/String;

    move-result-object v21

    .line 1367
    .local v21, methodValue:Ljava/lang/String;
    const/16 v16, 0x1

    .line 1372
    .end local v17           #mapper:Landroid/view/ViewDebug$IntToString;
    .end local v21           #methodValue:Ljava/lang/String;
    :cond_4
    if-nez v16, :cond_0

    .line 1373
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    .local v21, methodValue:Ljava/lang/Integer;
    goto/16 :goto_2

    .line 1363
    .restart local v17       #mapper:Landroid/view/ViewDebug$IntToString;
    .local v21, methodValue:Ljava/lang/Object;
    :cond_5
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 1377
    .end local v11           #flagsMapping:[Landroid/view/ViewDebug$FlagToString;
    .end local v14           #intValue:I
    .end local v15           #j:I
    .end local v16           #mapped:Z
    .end local v17           #mapper:Landroid/view/ViewDebug$IntToString;
    .end local v18           #mapping:[Landroid/view/ViewDebug$IntToString;
    .end local v19           #mappingCount:I
    :cond_6
    const-class v3, [I

    move-object/from16 v0, v23

    if-ne v0, v3, :cond_8

    .line 1378
    check-cast v21, [I

    .end local v21           #methodValue:Ljava/lang/Object;
    move-object/from16 v0, v21

    check-cast v0, [I

    move-object v6, v0

    .line 1379
    .local v6, array:[I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v20 .. v20}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1380
    .restart local v7       #valuePrefix:Ljava/lang/String;
    const-string v24, "()"

    .line 1382
    .local v24, suffix:Ljava/lang/String;
    const-string v8, "()"

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    invoke-static/range {v3 .. v8}, Landroid/view/ViewDebug;->exportUnrolledArray(Landroid/content/Context;Ljava/io/BufferedWriter;Landroid/view/ViewDebug$ExportedProperty;[ILjava/lang/String;Ljava/lang/String;)V

    .line 1398
    .end local v5           #property:Landroid/view/ViewDebug$ExportedProperty;
    .end local v6           #array:[I
    .end local v7           #valuePrefix:Ljava/lang/String;
    .end local v9           #categoryPrefix:Ljava/lang/String;
    .end local v20           #method:Ljava/lang/reflect/Method;
    .end local v23           #returnType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v24           #suffix:Ljava/lang/String;
    :cond_7
    return-void

    .line 1386
    .restart local v5       #property:Landroid/view/ViewDebug$ExportedProperty;
    .restart local v9       #categoryPrefix:Ljava/lang/String;
    .restart local v20       #method:Ljava/lang/reflect/Method;
    .restart local v21       #methodValue:Ljava/lang/Object;
    .restart local v23       #returnType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_8
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1387
    invoke-interface {v5}, Landroid/view/ViewDebug$ExportedProperty;->deepExport()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1388
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v5}, Landroid/view/ViewDebug$ExportedProperty;->prefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2, v3}, Landroid/view/ViewDebug;->dumpViewProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_3

    .line 1394
    .end local v5           #property:Landroid/view/ViewDebug$ExportedProperty;
    .end local v9           #categoryPrefix:Ljava/lang/String;
    .end local v21           #methodValue:Ljava/lang/Object;
    .end local v23           #returnType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_0
    move-exception v3

    goto/16 :goto_3

    .line 1395
    :catch_1
    move-exception v3

    goto/16 :goto_3
.end method

.method private static exportUnrolledArray(Landroid/content/Context;Ljava/io/BufferedWriter;Landroid/view/ViewDebug$ExportedProperty;[ILjava/lang/String;Ljava/lang/String;)V
    .locals 17
    .parameter "context"
    .parameter "out"
    .parameter "property"
    .parameter "array"
    .parameter "prefix"
    .parameter "suffix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1507
    invoke-interface/range {p2 .. p2}, Landroid/view/ViewDebug$ExportedProperty;->indexMapping()[Landroid/view/ViewDebug$IntToString;

    move-result-object v5

    .line 1508
    .local v5, indexMapping:[Landroid/view/ViewDebug$IntToString;
    array-length v0, v5

    move/from16 v16, v0

    if-lez v16, :cond_3

    const/4 v3, 0x1

    .line 1510
    .local v3, hasIndexMapping:Z
    :goto_0
    invoke-interface/range {p2 .. p2}, Landroid/view/ViewDebug$ExportedProperty;->mapping()[Landroid/view/ViewDebug$IntToString;

    move-result-object v10

    .line 1511
    .local v10, mapping:[Landroid/view/ViewDebug$IntToString;
    array-length v0, v10

    move/from16 v16, v0

    if-lez v16, :cond_4

    const/4 v4, 0x1

    .line 1513
    .local v4, hasMapping:Z
    :goto_1
    invoke-interface/range {p2 .. p2}, Landroid/view/ViewDebug$ExportedProperty;->resolveId()Z

    move-result v16

    if-eqz v16, :cond_5

    if-eqz p0, :cond_5

    const/4 v13, 0x1

    .line 1514
    .local v13, resolveId:Z
    :goto_2
    move-object/from16 v0, p3

    array-length v15, v0

    .line 1516
    .local v15, valuesCount:I
    const/4 v7, 0x0

    .local v7, j:I
    :goto_3
    if-ge v7, v15, :cond_9

    .line 1518
    const/4 v14, 0x0

    .line 1520
    .local v14, value:Ljava/lang/String;
    aget v6, p3, v7

    .line 1522
    .local v6, intValue:I
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    .line 1523
    .local v12, name:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 1524
    array-length v11, v5

    .line 1525
    .local v11, mappingCount:I
    const/4 v8, 0x0

    .local v8, k:I
    :goto_4
    if-ge v8, v11, :cond_0

    .line 1526
    aget-object v9, v5, v8

    .line 1527
    .local v9, mapped:Landroid/view/ViewDebug$IntToString;
    invoke-interface {v9}, Landroid/view/ViewDebug$IntToString;->from()I

    move-result v16

    move/from16 v0, v16

    if-ne v0, v7, :cond_6

    .line 1528
    invoke-interface {v9}, Landroid/view/ViewDebug$IntToString;->to()Ljava/lang/String;

    move-result-object v12

    .line 1534
    .end local v8           #k:I
    .end local v9           #mapped:Landroid/view/ViewDebug$IntToString;
    .end local v11           #mappingCount:I
    :cond_0
    if-eqz v4, :cond_1

    .line 1535
    array-length v11, v10

    .line 1536
    .restart local v11       #mappingCount:I
    const/4 v8, 0x0

    .restart local v8       #k:I
    :goto_5
    if-ge v8, v11, :cond_1

    .line 1537
    aget-object v9, v10, v8

    .line 1538
    .restart local v9       #mapped:Landroid/view/ViewDebug$IntToString;
    invoke-interface {v9}, Landroid/view/ViewDebug$IntToString;->from()I

    move-result v16

    move/from16 v0, v16

    if-ne v0, v6, :cond_7

    .line 1539
    invoke-interface {v9}, Landroid/view/ViewDebug$IntToString;->to()Ljava/lang/String;

    move-result-object v14

    .line 1545
    .end local v8           #k:I
    .end local v9           #mapped:Landroid/view/ViewDebug$IntToString;
    .end local v11           #mappingCount:I
    :cond_1
    if-eqz v13, :cond_8

    .line 1546
    if-nez v14, :cond_2

    move-object/from16 v0, p0

    invoke-static {v0, v6}, Landroid/view/ViewDebug;->resolveId(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v14

    .end local v14           #value:Ljava/lang/String;
    check-cast v14, Ljava/lang/String;

    .line 1551
    .restart local v14       #value:Ljava/lang/String;
    :cond_2
    :goto_6
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-static {v0, v1, v12, v2, v14}, Landroid/view/ViewDebug;->writeEntry(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1516
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1508
    .end local v3           #hasIndexMapping:Z
    .end local v4           #hasMapping:Z
    .end local v6           #intValue:I
    .end local v7           #j:I
    .end local v10           #mapping:[Landroid/view/ViewDebug$IntToString;
    .end local v12           #name:Ljava/lang/String;
    .end local v13           #resolveId:Z
    .end local v14           #value:Ljava/lang/String;
    .end local v15           #valuesCount:I
    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    .line 1511
    .restart local v3       #hasIndexMapping:Z
    .restart local v10       #mapping:[Landroid/view/ViewDebug$IntToString;
    :cond_4
    const/4 v4, 0x0

    goto :goto_1

    .line 1513
    .restart local v4       #hasMapping:Z
    :cond_5
    const/4 v13, 0x0

    goto :goto_2

    .line 1525
    .restart local v6       #intValue:I
    .restart local v7       #j:I
    .restart local v8       #k:I
    .restart local v9       #mapped:Landroid/view/ViewDebug$IntToString;
    .restart local v11       #mappingCount:I
    .restart local v12       #name:Ljava/lang/String;
    .restart local v13       #resolveId:Z
    .restart local v14       #value:Ljava/lang/String;
    .restart local v15       #valuesCount:I
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 1536
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 1548
    .end local v8           #k:I
    .end local v9           #mapped:Landroid/view/ViewDebug$IntToString;
    .end local v11           #mappingCount:I
    :cond_8
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    goto :goto_6

    .line 1553
    .end local v6           #intValue:I
    .end local v12           #name:Ljava/lang/String;
    .end local v14           #value:Ljava/lang/String;
    :cond_9
    return-void
.end method

.method private static exportUnrolledFlags(Ljava/io/BufferedWriter;[Landroid/view/ViewDebug$FlagToString;ILjava/lang/String;)V
    .locals 10
    .parameter "out"
    .parameter "mapping"
    .parameter "intValue"
    .parameter "prefix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1489
    array-length v0, p1

    .line 1490
    .local v0, count:I
    const/4 v3, 0x0

    .local v3, j:I
    :goto_0
    if-ge v3, v0, :cond_4

    .line 1491
    aget-object v1, p1, v3

    .line 1492
    .local v1, flagMapping:Landroid/view/ViewDebug$FlagToString;
    invoke-interface {v1}, Landroid/view/ViewDebug$FlagToString;->outputIf()Z

    move-result v2

    .line 1493
    .local v2, ifTrue:Z
    invoke-interface {v1}, Landroid/view/ViewDebug$FlagToString;->mask()I

    move-result v8

    and-int v4, p2, v8

    .line 1494
    .local v4, maskResult:I
    invoke-interface {v1}, Landroid/view/ViewDebug$FlagToString;->equals()I

    move-result v8

    if-ne v4, v8, :cond_3

    const/4 v6, 0x1

    .line 1495
    .local v6, test:Z
    :goto_1
    if-eqz v6, :cond_0

    if-nez v2, :cond_1

    :cond_0
    if-nez v6, :cond_2

    if-nez v2, :cond_2

    .line 1496
    :cond_1
    invoke-interface {v1}, Landroid/view/ViewDebug$FlagToString;->name()Ljava/lang/String;

    move-result-object v5

    .line 1497
    .local v5, name:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "0x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1498
    .local v7, value:Ljava/lang/String;
    const-string v8, ""

    invoke-static {p0, p3, v5, v8, v7}, Landroid/view/ViewDebug;->writeEntry(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1490
    .end local v5           #name:Ljava/lang/String;
    .end local v7           #value:Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1494
    .end local v6           #test:Z
    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    .line 1501
    .end local v1           #flagMapping:Landroid/view/ViewDebug$FlagToString;
    .end local v2           #ifTrue:Z
    .end local v4           #maskResult:I
    :cond_4
    return-void
.end method

.method private static findView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;
    .locals 8
    .parameter "root"
    .parameter "parameter"

    .prologue
    const/4 v5, 0x0

    .line 480
    const/16 v6, 0x40

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    .line 481
    const-string v6, "@"

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 482
    .local v3, ids:[Ljava/lang/String;
    const/4 v6, 0x0

    aget-object v0, v3, v6

    .line 483
    .local v0, className:Ljava/lang/String;
    const/4 v6, 0x1

    aget-object v6, v3, v6

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v6

    long-to-int v1, v6

    .line 485
    .local v1, hashCode:I
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v4

    .line 486
    .local v4, view:Landroid/view/View;
    instance-of v6, v4, Landroid/view/ViewGroup;

    if-eqz v6, :cond_0

    .line 487
    check-cast v4, Landroid/view/ViewGroup;

    .end local v4           #view:Landroid/view/View;
    invoke-static {v4, v0, v1}, Landroid/view/ViewDebug;->findView(Landroid/view/ViewGroup;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v5

    .line 495
    .end local v0           #className:Ljava/lang/String;
    .end local v1           #hashCode:I
    .end local v3           #ids:[Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v5

    .line 491
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, p1, v5, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 492
    .local v2, id:I
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    goto :goto_0
.end method

.method private static findView(Landroid/view/ViewGroup;Ljava/lang/String;I)Landroid/view/View;
    .locals 5
    .parameter "group"
    .parameter "className"
    .parameter "hashCode"

    .prologue
    .line 1164
    invoke-static {p0, p1, p2}, Landroid/view/ViewDebug;->isRequestedView(Landroid/view/View;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v1, p0

    .line 1188
    :cond_0
    :goto_0
    return-object v1

    .line 1168
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1169
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_5

    .line 1170
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1171
    .local v3, view:Landroid/view/View;
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_4

    move-object v4, v3

    .line 1172
    check-cast v4, Landroid/view/ViewGroup;

    invoke-static {v4, p1, p2}, Landroid/view/ViewDebug;->findView(Landroid/view/ViewGroup;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v1

    .line 1173
    .local v1, found:Landroid/view/View;
    if-nez v1, :cond_0

    .line 1179
    .end local v1           #found:Landroid/view/View;
    :cond_2
    instance-of v4, v3, Landroid/view/ViewDebug$HierarchyHandler;

    if-eqz v4, :cond_3

    .line 1180
    check-cast v3, Landroid/view/ViewDebug$HierarchyHandler;

    .end local v3           #view:Landroid/view/View;
    invoke-interface {v3, p1, p2}, Landroid/view/ViewDebug$HierarchyHandler;->findHierarchyView(Ljava/lang/String;I)Landroid/view/View;

    move-result-object v1

    .line 1182
    .restart local v1       #found:Landroid/view/View;
    if-nez v1, :cond_0

    .line 1169
    .end local v1           #found:Landroid/view/View;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1176
    .restart local v3       #view:Landroid/view/View;
    :cond_4
    invoke-static {v3, p1, p2}, Landroid/view/ViewDebug;->isRequestedView(Landroid/view/View;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v1, v3

    .line 1177
    goto :goto_0

    .line 1188
    .end local v3           #view:Landroid/view/View;
    :cond_5
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getExportedPropertyFields(Ljava/lang/Class;)[Ljava/lang/reflect/Field;
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .prologue
    .line 1236
    .local p0, klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget-object v7, Landroid/view/ViewDebug;->sFieldsForClasses:Ljava/util/HashMap;

    if-nez v7, :cond_0

    .line 1237
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    sput-object v7, Landroid/view/ViewDebug;->sFieldsForClasses:Ljava/util/HashMap;

    .line 1239
    :cond_0
    sget-object v7, Landroid/view/ViewDebug;->sAnnotations:Ljava/util/HashMap;

    if-nez v7, :cond_1

    .line 1240
    new-instance v7, Ljava/util/HashMap;

    const/16 v8, 0x200

    invoke-direct {v7, v8}, Ljava/util/HashMap;-><init>(I)V

    sput-object v7, Landroid/view/ViewDebug;->sAnnotations:Ljava/util/HashMap;

    .line 1243
    :cond_1
    sget-object v6, Landroid/view/ViewDebug;->sFieldsForClasses:Ljava/util/HashMap;

    .line 1245
    .local v6, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    invoke-virtual {v6, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/reflect/Field;

    .line 1246
    .local v2, fields:[Ljava/lang/reflect/Field;
    if-eqz v2, :cond_2

    move-object v3, v2

    .line 1266
    .end local v2           #fields:[Ljava/lang/reflect/Field;
    .local v3, fields:[Ljava/lang/reflect/Field;
    :goto_0
    return-object v3

    .line 1250
    .end local v3           #fields:[Ljava/lang/reflect/Field;
    .restart local v2       #fields:[Ljava/lang/reflect/Field;
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1251
    .local v4, foundFields:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/reflect/Field;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 1253
    array-length v0, v2

    .line 1254
    .local v0, count:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v0, :cond_4

    .line 1255
    aget-object v1, v2, v5

    .line 1256
    .local v1, field:Ljava/lang/reflect/Field;
    const-class v7, Landroid/view/ViewDebug$ExportedProperty;

    invoke-virtual {v1, v7}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1257
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 1258
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1259
    sget-object v7, Landroid/view/ViewDebug;->sAnnotations:Ljava/util/HashMap;

    const-class v8, Landroid/view/ViewDebug$ExportedProperty;

    invoke-virtual {v1, v8}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v8

    invoke-virtual {v7, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1254
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1263
    .end local v1           #field:Ljava/lang/reflect/Field;
    :cond_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/reflect/Field;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .end local v2           #fields:[Ljava/lang/reflect/Field;
    check-cast v2, [Ljava/lang/reflect/Field;

    .line 1264
    .restart local v2       #fields:[Ljava/lang/reflect/Field;
    invoke-virtual {v6, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v2

    .line 1266
    .end local v2           #fields:[Ljava/lang/reflect/Field;
    .restart local v3       #fields:[Ljava/lang/reflect/Field;
    goto :goto_0
.end method

.method private static getExportedPropertyMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 1270
    .local p0, klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget-object v7, Landroid/view/ViewDebug;->sMethodsForClasses:Ljava/util/HashMap;

    if-nez v7, :cond_0

    .line 1271
    new-instance v7, Ljava/util/HashMap;

    const/16 v8, 0x64

    invoke-direct {v7, v8}, Ljava/util/HashMap;-><init>(I)V

    sput-object v7, Landroid/view/ViewDebug;->sMethodsForClasses:Ljava/util/HashMap;

    .line 1273
    :cond_0
    sget-object v7, Landroid/view/ViewDebug;->sAnnotations:Ljava/util/HashMap;

    if-nez v7, :cond_1

    .line 1274
    new-instance v7, Ljava/util/HashMap;

    const/16 v8, 0x200

    invoke-direct {v7, v8}, Ljava/util/HashMap;-><init>(I)V

    sput-object v7, Landroid/view/ViewDebug;->sAnnotations:Ljava/util/HashMap;

    .line 1277
    :cond_1
    sget-object v3, Landroid/view/ViewDebug;->sMethodsForClasses:Ljava/util/HashMap;

    .line 1279
    .local v3, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Class<*>;[Ljava/lang/reflect/Method;>;"
    invoke-virtual {v3, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/reflect/Method;

    .line 1280
    .local v5, methods:[Ljava/lang/reflect/Method;
    if-eqz v5, :cond_2

    move-object v6, v5

    .line 1302
    .end local v5           #methods:[Ljava/lang/reflect/Method;
    .local v6, methods:[Ljava/lang/reflect/Method;
    :goto_0
    return-object v6

    .line 1284
    .end local v6           #methods:[Ljava/lang/reflect/Method;
    .restart local v5       #methods:[Ljava/lang/reflect/Method;
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1285
    .local v1, foundMethods:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/reflect/Method;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v5

    .line 1287
    array-length v0, v5

    .line 1288
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_4

    .line 1289
    aget-object v4, v5, v2

    .line 1290
    .local v4, method:Ljava/lang/reflect/Method;
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    array-length v7, v7

    if-nez v7, :cond_3

    const-class v7, Landroid/view/ViewDebug$ExportedProperty;

    invoke-virtual {v4, v7}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v7

    const-class v8, Ljava/lang/Void;

    if-eq v7, v8, :cond_3

    .line 1293
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 1294
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1295
    sget-object v7, Landroid/view/ViewDebug;->sAnnotations:Ljava/util/HashMap;

    const-class v8, Landroid/view/ViewDebug$ExportedProperty;

    invoke-virtual {v4, v8}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v8

    invoke-virtual {v7, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1288
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1299
    .end local v4           #method:Ljava/lang/reflect/Method;
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/reflect/Method;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    .end local v5           #methods:[Ljava/lang/reflect/Method;
    check-cast v5, [Ljava/lang/reflect/Method;

    .line 1300
    .restart local v5       #methods:[Ljava/lang/reflect/Method;
    invoke-virtual {v3, p0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v5

    .line 1302
    .end local v5           #methods:[Ljava/lang/reflect/Method;
    .restart local v6       #methods:[Ljava/lang/reflect/Method;
    goto :goto_0
.end method

.method public static getViewInstanceCount()J
    .locals 2

    .prologue
    .line 364
    const-class v0, Landroid/view/View;

    invoke-static {v0}, Landroid/os/Debug;->countInstancesOfClass(Ljava/lang/Class;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getViewRootImplCount()J
    .locals 2

    .prologue
    .line 375
    const-class v0, Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/os/Debug;->countInstancesOfClass(Ljava/lang/Class;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static invalidate(Landroid/view/View;Ljava/lang/String;)V
    .locals 1
    .parameter "root"
    .parameter "parameter"

    .prologue
    .line 499
    invoke-static {p0, p1}, Landroid/view/ViewDebug;->findView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 500
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 501
    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    .line 503
    :cond_0
    return-void
.end method

.method private static isRequestedView(Landroid/view/View;Ljava/lang/String;I)Z
    .locals 1
    .parameter "view"
    .parameter "className"
    .parameter "hashCode"

    .prologue
    .line 1192
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static outputDisplayList(Landroid/view/View;Ljava/lang/String;)V
    .locals 2
    .parameter "root"
    .parameter "parameter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 744
    invoke-static {p0, p1}, Landroid/view/ViewDebug;->findView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 745
    .local v0, view:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl;->outputDisplayList(Landroid/view/View;)V

    .line 746
    return-void
.end method

.method private static performViewCapture(Landroid/view/View;Z)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "captureView"
    .parameter "skpiChildren"

    .prologue
    const/4 v3, 0x1

    .line 776
    if-eqz p0, :cond_0

    .line 777
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 778
    .local v2, latch:Ljava/util/concurrent/CountDownLatch;
    new-array v0, v3, [Landroid/graphics/Bitmap;

    .line 780
    .local v0, cache:[Landroid/graphics/Bitmap;
    new-instance v3, Landroid/view/ViewDebug$6;

    invoke-direct {v3, v0, p0, p1, v2}, Landroid/view/ViewDebug$6;-><init>([Landroid/graphics/Bitmap;Landroid/view/View;ZLjava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 794
    const-wide/16 v3, 0xfa0

    :try_start_0
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 795
    const/4 v3, 0x0

    aget-object v3, v0, v3
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 802
    .end local v0           #cache:[Landroid/graphics/Bitmap;
    .end local v2           #latch:Ljava/util/concurrent/CountDownLatch;
    :goto_0
    return-object v3

    .line 796
    .restart local v0       #cache:[Landroid/graphics/Bitmap;
    .restart local v2       #latch:Ljava/util/concurrent/CountDownLatch;
    :catch_0
    move-exception v1

    .line 797
    .local v1, e:Ljava/lang/InterruptedException;
    const-string v3, "View"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not complete the capture of the view "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 802
    .end local v0           #cache:[Landroid/graphics/Bitmap;
    .end local v1           #e:Ljava/lang/InterruptedException;
    .end local v2           #latch:Ljava/util/concurrent/CountDownLatch;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static profile(Landroid/view/View;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 6
    .parameter "root"
    .parameter "clientStream"
    .parameter "parameter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 519
    invoke-static {p0, p2}, Landroid/view/ViewDebug;->findView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 520
    .local v3, view:Landroid/view/View;
    const/4 v1, 0x0

    .line 522
    .local v1, out:Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-direct {v4, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const v5, 0x8000

    invoke-direct {v2, v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 524
    .end local v1           #out:Ljava/io/BufferedWriter;
    .local v2, out:Ljava/io/BufferedWriter;
    if-eqz v3, :cond_2

    .line 525
    :try_start_1
    invoke-static {v3, v2}, Landroid/view/ViewDebug;->profileViewAndChildren(Landroid/view/View;Ljava/io/BufferedWriter;)V

    .line 530
    :goto_0
    const-string v4, "DONE."

    invoke-virtual {v2, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 531
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 535
    if-eqz v2, :cond_0

    .line 536
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    :cond_0
    move-object v1, v2

    .line 539
    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v1       #out:Ljava/io/BufferedWriter;
    :cond_1
    :goto_1
    return-void

    .line 527
    .end local v1           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    :cond_2
    :try_start_2
    const-string v4, "-1 -1 -1"

    invoke-virtual {v2, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 528
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 532
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 533
    .end local v2           #out:Ljava/io/BufferedWriter;
    .local v0, e:Ljava/lang/Exception;
    .restart local v1       #out:Ljava/io/BufferedWriter;
    :goto_2
    :try_start_3
    const-string v4, "View"

    const-string v5, "Problem profiling the view:"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 535
    if-eqz v1, :cond_1

    .line 536
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    goto :goto_1

    .line 535
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    :goto_3
    if-eqz v1, :cond_3

    .line 536
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    .line 535
    :cond_3
    throw v4

    .end local v1           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v1       #out:Ljava/io/BufferedWriter;
    goto :goto_3

    .line 532
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method private static profileViewAndChildren(Landroid/view/View;Ljava/io/BufferedWriter;)V
    .locals 1
    .parameter "view"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 543
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/view/ViewDebug;->profileViewAndChildren(Landroid/view/View;Ljava/io/BufferedWriter;Z)V

    .line 544
    return-void
.end method

.method private static profileViewAndChildren(Landroid/view/View;Ljava/io/BufferedWriter;Z)V
    .locals 11
    .parameter "view"
    .parameter "out"
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x20

    const-wide/16 v1, 0x0

    .line 549
    if-nez p2, :cond_0

    iget v9, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v9, v9, 0x800

    if-eqz v9, :cond_4

    :cond_0
    new-instance v9, Landroid/view/ViewDebug$2;

    invoke-direct {v9, p0}, Landroid/view/ViewDebug$2;-><init>(Landroid/view/View;)V

    invoke-static {p0, v9}, Landroid/view/ViewDebug;->profileViewOperation(Landroid/view/View;Landroid/view/ViewDebug$ViewOperation;)J

    move-result-wide v5

    .line 576
    .local v5, durationMeasure:J
    :goto_0
    if-nez p2, :cond_1

    iget v9, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v9, v9, 0x2000

    if-eqz v9, :cond_5

    :cond_1
    new-instance v9, Landroid/view/ViewDebug$3;

    invoke-direct {v9, p0}, Landroid/view/ViewDebug$3;-><init>(Landroid/view/View;)V

    invoke-static {p0, v9}, Landroid/view/ViewDebug;->profileViewOperation(Landroid/view/View;Landroid/view/ViewDebug$ViewOperation;)J

    move-result-wide v3

    .line 590
    .local v3, durationLayout:J
    :goto_1
    if-nez p2, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->willNotDraw()Z

    move-result v9

    if-eqz v9, :cond_2

    iget v9, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v9, v9, 0x20

    if-eqz v9, :cond_3

    :cond_2
    new-instance v9, Landroid/view/ViewDebug$4;

    invoke-direct {v9, p0}, Landroid/view/ViewDebug$4;-><init>(Landroid/view/View;)V

    invoke-static {p0, v9}, Landroid/view/ViewDebug;->profileViewOperation(Landroid/view/View;Landroid/view/ViewDebug$ViewOperation;)J

    move-result-wide v1

    .line 621
    .local v1, durationDraw:J
    :cond_3
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 622
    invoke-virtual {p1, v10}, Ljava/io/BufferedWriter;->write(I)V

    .line 623
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 624
    invoke-virtual {p1, v10}, Ljava/io/BufferedWriter;->write(I)V

    .line 625
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 626
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V

    .line 627
    instance-of v9, p0, Landroid/view/ViewGroup;

    if-eqz v9, :cond_6

    move-object v7, p0

    .line 628
    check-cast v7, Landroid/view/ViewGroup;

    .line 629
    .local v7, group:Landroid/view/ViewGroup;
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 630
    .local v0, count:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_2
    if-ge v8, v0, :cond_6

    .line 631
    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v9, p1, v10}, Landroid/view/ViewDebug;->profileViewAndChildren(Landroid/view/View;Ljava/io/BufferedWriter;Z)V

    .line 630
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .end local v0           #count:I
    .end local v1           #durationDraw:J
    .end local v3           #durationLayout:J
    .end local v5           #durationMeasure:J
    .end local v7           #group:Landroid/view/ViewGroup;
    .end local v8           #i:I
    :cond_4
    move-wide v5, v1

    .line 549
    goto :goto_0

    .restart local v5       #durationMeasure:J
    :cond_5
    move-wide v3, v1

    .line 576
    goto :goto_1

    .line 634
    .restart local v1       #durationDraw:J
    .restart local v3       #durationLayout:J
    :cond_6
    return-void
.end method

.method private static profileViewOperation(Landroid/view/View;Landroid/view/ViewDebug$ViewOperation;)J
    .locals 8
    .parameter "view"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/view/View;",
            "Landroid/view/ViewDebug$ViewOperation",
            "<TT;>;)J"
        }
    .end annotation

    .prologue
    .local p1, operation:Landroid/view/ViewDebug$ViewOperation;,"Landroid/view/ViewDebug$ViewOperation<TT;>;"
    const-wide/16 v3, -0x1

    const/4 v5, 0x1

    .line 643
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 644
    .local v2, latch:Ljava/util/concurrent/CountDownLatch;
    new-array v0, v5, [J

    .line 646
    .local v0, duration:[J
    new-instance v5, Landroid/view/ViewDebug$5;

    invoke-direct {v5, p1, v0, v2}, Landroid/view/ViewDebug$5;-><init>(Landroid/view/ViewDebug$ViewOperation;[JLjava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, v5}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 663
    const-wide/16 v5, 0xfa0

    :try_start_0
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v5, v6, v7}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 664
    const-string v5, "View"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not complete the profiling of the view "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 673
    :goto_0
    return-wide v3

    .line 667
    :catch_0
    move-exception v1

    .line 668
    .local v1, e:Ljava/lang/InterruptedException;
    const-string v5, "View"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not complete the profiling of the view "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 673
    .end local v1           #e:Ljava/lang/InterruptedException;
    :cond_0
    const/4 v3, 0x0

    aget-wide v3, v0, v3

    goto :goto_0
.end method

.method private static requestLayout(Landroid/view/View;Ljava/lang/String;)V
    .locals 2
    .parameter "root"
    .parameter "parameter"

    .prologue
    .line 506
    invoke-static {p0, p1}, Landroid/view/ViewDebug;->findView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 507
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 508
    new-instance v1, Landroid/view/ViewDebug$1;

    invoke-direct {v1, v0}, Landroid/view/ViewDebug$1;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 514
    :cond_0
    return-void
.end method

.method static resolveId(Landroid/content/Context;I)Ljava/lang/Object;
    .locals 5
    .parameter "context"
    .parameter "id"

    .prologue
    .line 1557
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1558
    .local v2, resources:Landroid/content/res/Resources;
    if-ltz p1, :cond_0

    .line 1560
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1568
    .local v1, fieldValue:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 1562
    .end local v1           #fieldValue:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1563
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "id/0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1564
    .restart local v1       #fieldValue:Ljava/lang/String;
    goto :goto_0

    .line 1566
    .end local v0           #e:Landroid/content/res/Resources$NotFoundException;
    .end local v1           #fieldValue:Ljava/lang/String;
    :cond_0
    const-string v1, "NO_ID"

    .restart local v1       #fieldValue:Ljava/lang/String;
    goto :goto_0
.end method

.method public static startHierarchyTracing(Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .parameter "prefix"
    .parameter "view"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 416
    return-void
.end method

.method public static startRecyclerTracing(Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .parameter "prefix"
    .parameter "view"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 392
    return-void
.end method

.method public static stopHierarchyTracing()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 423
    return-void
.end method

.method public static stopRecyclerTracing()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 400
    return-void
.end method

.method public static trace(Landroid/view/View;Landroid/view/ViewDebug$HierarchyTraceType;)V
    .locals 0
    .parameter "view"
    .parameter "type"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 408
    return-void
.end method

.method public static varargs trace(Landroid/view/View;Landroid/view/ViewDebug$RecyclerTraceType;[I)V
    .locals 0
    .parameter "view"
    .parameter "type"
    .parameter "parameters"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 384
    return-void
.end method

.method private static writeEntry(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "out"
    .parameter "prefix"
    .parameter "name"
    .parameter "suffix"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1478
    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1479
    invoke-virtual {p0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1480
    invoke-virtual {p0, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1481
    const-string v0, "="

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1482
    invoke-static {p0, p4}, Landroid/view/ViewDebug;->writeValue(Ljava/io/BufferedWriter;Ljava/lang/Object;)V

    .line 1483
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/io/BufferedWriter;->write(I)V

    .line 1484
    return-void
.end method

.method private static writeValue(Ljava/io/BufferedWriter;Ljava/lang/Object;)V
    .locals 4
    .parameter "out"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1572
    if-eqz p1, :cond_0

    .line 1573
    const-string v0, "[EXCEPTION]"

    .line 1575
    .local v0, output:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n"

    const-string v3, "\\n"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1577
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1578
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1579
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1584
    .end local v0           #output:Ljava/lang/String;
    :goto_0
    return-void

    .line 1577
    .restart local v0       #output:Ljava/lang/String;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1578
    const-string v2, ","

    invoke-virtual {p0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1579
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1577
    throw v1

    .line 1582
    .end local v0           #output:Ljava/lang/String;
    :cond_0
    const-string v1, "4,null"

    invoke-virtual {p0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0
.end method
