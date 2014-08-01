.class public final Lcom/google/api/client/googleapis/json/JsonMultiKindFeedParser;
.super Lcom/google/api/client/googleapis/json/AbstractJsonFeedParser;
.source "JsonMultiKindFeedParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/api/client/googleapis/json/AbstractJsonFeedParser",
        "<TT;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final kindToItemClassMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>(Lcom/google/api/client/json/JsonParser;Ljava/lang/Class;[Ljava/lang/Class;)V
    .locals 11
    .parameter "parser"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/client/json/JsonParser;",
            "Ljava/lang/Class",
            "<TT;>;[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, this:Lcom/google/api/client/googleapis/json/JsonMultiKindFeedParser;,"Lcom/google/api/client/googleapis/json/JsonMultiKindFeedParser<TT;>;"
    .local p2, feedClass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    .local p3, itemClasses:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, p2}, Lcom/google/api/client/googleapis/json/AbstractJsonFeedParser;-><init>(Lcom/google/api/client/json/JsonParser;Ljava/lang/Class;)V

    .line 40
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lcom/google/api/client/googleapis/json/JsonMultiKindFeedParser;->kindToItemClassMap:Ljava/util/HashMap;

    .line 49
    array-length v7, p3

    .line 50
    .local v7, numItems:I
    iget-object v6, p0, Lcom/google/api/client/googleapis/json/JsonMultiKindFeedParser;->kindToItemClassMap:Ljava/util/HashMap;

    .line 51
    .local v6, kindToItemClassMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v7, :cond_2

    .line 52
    aget-object v4, p3, v2

    .line 53
    .local v4, itemClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {v4}, Lcom/google/api/client/util/ClassInfo;->of(Ljava/lang/Class;)Lcom/google/api/client/util/ClassInfo;

    move-result-object v0

    .line 54
    .local v0, classInfo:Lcom/google/api/client/util/ClassInfo;
    const-string v8, "kind"

    invoke-virtual {v0, v8}, Lcom/google/api/client/util/ClassInfo;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 55
    .local v1, field:Ljava/lang/reflect/Field;
    if-nez v1, :cond_0

    .line 56
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "missing kind field for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 58
    :cond_0
    invoke-static {v4}, Lcom/google/api/client/util/Types;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    .line 59
    .local v3, item:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/api/client/util/FieldInfo;->getFieldValue(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 60
    .local v5, kind:Ljava/lang/String;
    if-nez v5, :cond_1

    .line 61
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "missing value for kind field in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 64
    :cond_1
    invoke-virtual {v6, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 66
    .end local v0           #classInfo:Lcom/google/api/client/util/ClassInfo;
    .end local v1           #field:Ljava/lang/reflect/Field;
    .end local v3           #item:Ljava/lang/Object;
    .end local v4           #itemClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v5           #kind:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public static varargs use(Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/HttpResponse;Ljava/lang/Class;[Ljava/lang/Class;)Lcom/google/api/client/googleapis/json/JsonMultiKindFeedParser;
    .locals 2
    .parameter "jsonFactory"
    .parameter "response"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "I:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/api/client/json/JsonFactory;",
            "Lcom/google/api/client/http/HttpResponse;",
            "Ljava/lang/Class",
            "<TT;>;[",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/google/api/client/googleapis/json/JsonMultiKindFeedParser",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    .local p2, feedClass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    .local p3, itemClasses:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    new-instance v0, Lcom/google/api/client/googleapis/json/JsonMultiKindFeedParser;

    invoke-static {p0, p1}, Lcom/google/api/client/googleapis/json/JsonCParser;->parserForResponse(Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/HttpResponse;)Lcom/google/api/client/json/JsonParser;

    move-result-object v1

    invoke-direct {v0, v1, p2, p3}, Lcom/google/api/client/googleapis/json/JsonMultiKindFeedParser;-><init>(Lcom/google/api/client/json/JsonParser;Ljava/lang/Class;[Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method parseItemInternal()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    .local p0, this:Lcom/google/api/client/googleapis/json/JsonMultiKindFeedParser;,"Lcom/google/api/client/googleapis/json/JsonMultiKindFeedParser<TT;>;"
    iget-object v3, p0, Lcom/google/api/client/googleapis/json/AbstractJsonFeedParser;->parser:Lcom/google/api/client/json/JsonParser;

    invoke-virtual {v3}, Lcom/google/api/client/json/JsonParser;->nextToken()Lcom/google/api/client/json/JsonToken;

    .line 71
    iget-object v3, p0, Lcom/google/api/client/googleapis/json/AbstractJsonFeedParser;->parser:Lcom/google/api/client/json/JsonParser;

    invoke-virtual {v3}, Lcom/google/api/client/json/JsonParser;->getText()Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, key:Ljava/lang/String;
    const-string v3, "kind"

    if-eq v1, v3, :cond_0

    .line 73
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "expected kind field: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 75
    :cond_0
    iget-object v3, p0, Lcom/google/api/client/googleapis/json/AbstractJsonFeedParser;->parser:Lcom/google/api/client/json/JsonParser;

    invoke-virtual {v3}, Lcom/google/api/client/json/JsonParser;->nextToken()Lcom/google/api/client/json/JsonToken;

    .line 76
    iget-object v3, p0, Lcom/google/api/client/googleapis/json/AbstractJsonFeedParser;->parser:Lcom/google/api/client/json/JsonParser;

    invoke-virtual {v3}, Lcom/google/api/client/json/JsonParser;->getText()Ljava/lang/String;

    move-result-object v2

    .line 77
    .local v2, kind:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/api/client/googleapis/json/JsonMultiKindFeedParser;->kindToItemClassMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 78
    .local v0, itemClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-nez v0, :cond_1

    .line 79
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unrecognized kind: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 81
    :cond_1
    iget-object v3, p0, Lcom/google/api/client/googleapis/json/AbstractJsonFeedParser;->parser:Lcom/google/api/client/json/JsonParser;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Lcom/google/api/client/json/JsonParser;->parse(Ljava/lang/Class;Lcom/google/api/client/json/CustomizeJsonParser;)Ljava/lang/Object;

    move-result-object v3

    return-object v3
.end method
