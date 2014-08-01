.class public Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;
.super Ljava/lang/Object;
.source "SearchCriteria.java"


# static fields
.field public static final AND:Ljava/lang/String; = "and"

.field public static final CLASS:Ljava/lang/String; = "upnp:class"

.field public static final CONTAINS:Ljava/lang/String; = "contains"

.field public static final CREATOR:Ljava/lang/String; = "dc:creator"

.field public static final DATE:Ljava/lang/String; = "dc:date"

.field public static final DERIVEDFROM:Ljava/lang/String; = "derivedfrom"

.field public static final DOESNOTCONTAIN:Ljava/lang/String; = "doesNotContain"

.field public static final EQ:Ljava/lang/String; = "="

.field public static final EXISTS:Ljava/lang/String; = "exists"

.field public static final FALSE:Ljava/lang/String; = "false"

.field public static final GE:Ljava/lang/String; = ">="

.field public static final GT:Ljava/lang/String; = ">"

.field public static final ID:Ljava/lang/String; = "@id"

.field public static final LE:Ljava/lang/String; = "<="

.field public static final LT:Ljava/lang/String; = "<"

.field public static final NEQ:Ljava/lang/String; = "!="

.field public static final OR:Ljava/lang/String; = "or"

.field public static final PARENT_ID:Ljava/lang/String; = "@parentID"

.field public static final TITLE:Ljava/lang/String; = "dc:title"

.field public static final TRUE:Ljava/lang/String; = "true"

.field public static final WCHARS:Ljava/lang/String; = " \t\n\u000c\r"


# instance fields
.field private logic:Ljava/lang/String;

.field private operation:Ljava/lang/String;

.field private property:Ljava/lang/String;

.field private result:Z

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const-string v0, ""

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;->setProperty(Ljava/lang/String;)V

    .line 58
    const-string v0, ""

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;->setOperation(Ljava/lang/String;)V

    .line 59
    const-string v0, ""

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;->setValue(Ljava/lang/String;)V

    .line 60
    const-string v0, ""

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;->setLogic(Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;)V
    .locals 1
    .parameter "searchCri"

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-virtual {p1}, Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;->getProperty()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;->setProperty(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p1}, Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;->getOperation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;->setOperation(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p1}, Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;->setValue(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p1}, Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;->getLogic()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;->setLogic(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p1}, Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;->getResult()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;->setResult(Z)V

    .line 70
    return-void
.end method


# virtual methods
.method public getLogic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;->logic:Ljava/lang/String;

    return-object v0
.end method

.method public getOperation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;->operation:Ljava/lang/String;

    return-object v0
.end method

.method public getProperty()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;->property:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()Z
    .locals 1

    .prologue
    .line 219
    iget-boolean v0, p0, Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;->result:Z

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;->value:Ljava/lang/String;

    return-object v0
.end method

.method public isContains()Z
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;->operation:Ljava/lang/String;

    const-string v1, "contains"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDerivedFrom()Z
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;->operation:Ljava/lang/String;

    const-string v1, "derivedfrom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDoesNotContain()Z
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;->operation:Ljava/lang/String;

    const-string v1, "doesNotContain"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEQ()Z
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;->operation:Ljava/lang/String;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isExists()Z
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;->operation:Ljava/lang/String;

    const-string v1, "exists"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isFalseValue()Z
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;->value:Ljava/lang/String;

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGE()Z
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;->operation:Ljava/lang/String;

    const-string v1, ">="

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGT()Z
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;->operation:Ljava/lang/String;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLE()Z
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;->operation:Ljava/lang/String;

    const-string v1, "<="

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLT()Z
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;->operation:Ljava/lang/String;

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLogicalAND()Z
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;->logic:Ljava/lang/String;

    const-string v1, "and"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLogicalOR()Z
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;->logic:Ljava/lang/String;

    const-string v1, "or"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNEQ()Z
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;->operation:Ljava/lang/String;

    const-string v1, "!="

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isTrueValue()Z
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;->value:Ljava/lang/String;

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLogic(Ljava/lang/String;)V
    .locals 0
    .parameter "val"

    .prologue
    .line 188
    iput-object p1, p0, Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;->logic:Ljava/lang/String;

    .line 189
    return-void
.end method

.method public setOperation(Ljava/lang/String;)V
    .locals 0
    .parameter "val"

    .prologue
    .line 96
    iput-object p1, p0, Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;->operation:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setProperty(Ljava/lang/String;)V
    .locals 0
    .parameter "val"

    .prologue
    .line 80
    iput-object p1, p0, Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;->property:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setResult(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 214
    iput-boolean p1, p0, Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;->result:Z

    .line 215
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .parameter "val"

    .prologue
    .line 162
    iput-object p1, p0, Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;->value:Ljava/lang/String;

    .line 163
    return-void
.end method
