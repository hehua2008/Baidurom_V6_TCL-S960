.class public final Lcom/google/api/client/http/HttpMediaType;
.super Ljava/lang/Object;
.source "HttpMediaType.java"


# static fields
.field private static final FULL_MEDIA_TYPE_REGEX:Ljava/util/regex/Pattern;

.field private static final PARAMETER_REGEX:Ljava/util/regex/Pattern;

.field private static final TOKEN_REGEX:Ljava/util/regex/Pattern;

.field private static final TYPE_REGEX:Ljava/util/regex/Pattern;


# instance fields
.field private cachedBuildResult:Ljava/lang/String;

.field private final parameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private subType:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 68
    const-string v5, "[\\w!#$&.+\\-\\^_]+|[*]"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    sput-object v5, Lcom/google/api/client/http/HttpMediaType;->TYPE_REGEX:Ljava/util/regex/Pattern;

    .line 72
    const-string v5, "[\\p{ASCII}&&[^\\p{Cntrl} ;/=\\[\\]\\(\\)\\<\\>\\@\\,\\:\\\"\\?\\=]]+"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    sput-object v5, Lcom/google/api/client/http/HttpMediaType;->TOKEN_REGEX:Ljava/util/regex/Pattern;

    .line 78
    const-string v2, "[^\\s/=;\"]+"

    .line 79
    .local v2, typeOrKey:Ljava/lang/String;
    const-string v4, ";.*"

    .line 80
    .local v4, wholeParameterSection:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\\s*("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")/("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\\s*("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x20

    invoke-static {v5, v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v5

    sput-object v5, Lcom/google/api/client/http/HttpMediaType;->FULL_MEDIA_TYPE_REGEX:Ljava/util/regex/Pattern;

    .line 85
    const-string v1, "\"([^\"]*)\""

    .line 86
    .local v1, quotedParameterValue:Ljava/lang/String;
    const-string v3, "[^\\s;/\"=]*"

    .line 87
    .local v3, unquotedParameterValue:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, parameterValue:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\\s*;\\s*("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "=("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    sput-object v5, Lcom/google/api/client/http/HttpMediaType;->PARAMETER_REGEX:Ljava/util/regex/Pattern;

    .line 90
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "mediaType"

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-string v0, "application"

    iput-object v0, p0, Lcom/google/api/client/http/HttpMediaType;->type:Ljava/lang/String;

    .line 56
    const-string v0, "octet-stream"

    iput-object v0, p0, Lcom/google/api/client/http/HttpMediaType;->subType:Ljava/lang/String;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/http/HttpMediaType;->parameters:Ljava/util/Map;

    .line 108
    invoke-direct {p0, p1}, Lcom/google/api/client/http/HttpMediaType;->fromString(Ljava/lang/String;)Lcom/google/api/client/http/HttpMediaType;

    .line 109
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "type"
    .parameter "subType"

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-string v0, "application"

    iput-object v0, p0, Lcom/google/api/client/http/HttpMediaType;->type:Ljava/lang/String;

    .line 56
    const-string v0, "octet-stream"

    iput-object v0, p0, Lcom/google/api/client/http/HttpMediaType;->subType:Ljava/lang/String;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/http/HttpMediaType;->parameters:Ljava/util/Map;

    .line 98
    invoke-virtual {p0, p1}, Lcom/google/api/client/http/HttpMediaType;->setType(Ljava/lang/String;)Lcom/google/api/client/http/HttpMediaType;

    .line 99
    invoke-virtual {p0, p2}, Lcom/google/api/client/http/HttpMediaType;->setSubType(Ljava/lang/String;)Lcom/google/api/client/http/HttpMediaType;

    .line 100
    return-void
.end method

.method public static equalsIgnoreParameters(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "mediaTypeA"
    .parameter "mediaTypeB"

    .prologue
    .line 290
    if-nez p0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    new-instance v0, Lcom/google/api/client/http/HttpMediaType;

    invoke-direct {v0, p0}, Lcom/google/api/client/http/HttpMediaType;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/google/api/client/http/HttpMediaType;

    invoke-direct {v1, p1}, Lcom/google/api/client/http/HttpMediaType;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/HttpMediaType;->equalsIgnoreParameters(Lcom/google/api/client/http/HttpMediaType;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private fromString(Ljava/lang/String;)Lcom/google/api/client/http/HttpMediaType;
    .locals 9
    .parameter "combinedType"

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 163
    sget-object v4, Lcom/google/api/client/http/HttpMediaType;->FULL_MEDIA_TYPE_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 164
    .local v1, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    const-string v5, "Type must be in the \'maintype/subtype; parameter=value\' format"

    invoke-static {v4, v5}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 167
    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/api/client/http/HttpMediaType;->setType(Ljava/lang/String;)Lcom/google/api/client/http/HttpMediaType;

    .line 168
    invoke-virtual {v1, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/api/client/http/HttpMediaType;->setSubType(Ljava/lang/String;)Lcom/google/api/client/http/HttpMediaType;

    .line 169
    invoke-virtual {v1, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 170
    .local v2, params:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 171
    sget-object v4, Lcom/google/api/client/http/HttpMediaType;->PARAMETER_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 172
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 174
    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, key:Ljava/lang/String;
    invoke-virtual {v1, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 176
    .local v3, value:Ljava/lang/String;
    if-nez v3, :cond_0

    .line 177
    invoke-virtual {v1, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 179
    :cond_0
    invoke-virtual {p0, v0, v3}, Lcom/google/api/client/http/HttpMediaType;->setParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/client/http/HttpMediaType;

    goto :goto_0

    .line 182
    .end local v0           #key:Ljava/lang/String;
    .end local v3           #value:Ljava/lang/String;
    :cond_1
    return-object p0
.end method

.method private static quoteString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "unquotedString"

    .prologue
    .line 245
    const-string v1, "\\"

    const-string v2, "\\\\"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 246
    .local v0, escapedString:Ljava/lang/String;
    const-string v1, "\""

    const-string v2, "\\\""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 247
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static requiresQuotes(Ljava/lang/String;)Z
    .locals 1
    .parameter "parameterValue"

    .prologue
    .line 241
    sget-object v0, Lcom/google/api/client/http/HttpMediaType;->TOKEN_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public build()Ljava/lang/String;
    .locals 5

    .prologue
    .line 254
    iget-object v4, p0, Lcom/google/api/client/http/HttpMediaType;->cachedBuildResult:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 255
    iget-object v4, p0, Lcom/google/api/client/http/HttpMediaType;->cachedBuildResult:Ljava/lang/String;

    .line 272
    :goto_0
    return-object v4

    .line 258
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 259
    .local v2, str:Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/google/api/client/http/HttpMediaType;->type:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    const/16 v4, 0x2f

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 261
    iget-object v4, p0, Lcom/google/api/client/http/HttpMediaType;->subType:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    iget-object v4, p0, Lcom/google/api/client/http/HttpMediaType;->parameters:Ljava/util/Map;

    if-eqz v4, :cond_2

    .line 263
    iget-object v4, p0, Lcom/google/api/client/http/HttpMediaType;->parameters:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 264
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 265
    .local v3, value:Ljava/lang/String;
    const-string v4, "; "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    const-string v4, "="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    invoke-static {v3}, Lcom/google/api/client/http/HttpMediaType;->requiresQuotes(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v3}, Lcom/google/api/client/http/HttpMediaType;->quoteString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .end local v3           #value:Ljava/lang/String;
    :cond_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 271
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/api/client/http/HttpMediaType;->cachedBuildResult:Ljava/lang/String;

    .line 272
    iget-object v4, p0, Lcom/google/api/client/http/HttpMediaType;->cachedBuildResult:Ljava/lang/String;

    goto :goto_0
.end method

.method public clearParameters()V
    .locals 1

    .prologue
    .line 228
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/api/client/http/HttpMediaType;->cachedBuildResult:Ljava/lang/String;

    .line 229
    iget-object v0, p0, Lcom/google/api/client/http/HttpMediaType;->parameters:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 230
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    .line 319
    instance-of v2, p1, Lcom/google/api/client/http/HttpMediaType;

    if-nez v2, :cond_1

    .line 325
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 323
    check-cast v0, Lcom/google/api/client/http/HttpMediaType;

    .line 325
    .local v0, otherType:Lcom/google/api/client/http/HttpMediaType;
    invoke-virtual {p0, v0}, Lcom/google/api/client/http/HttpMediaType;->equalsIgnoreParameters(Lcom/google/api/client/http/HttpMediaType;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/api/client/http/HttpMediaType;->parameters:Ljava/util/Map;

    iget-object v3, v0, Lcom/google/api/client/http/HttpMediaType;->parameters:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public equalsIgnoreParameters(Lcom/google/api/client/http/HttpMediaType;)Z
    .locals 2
    .parameter "mediaType"

    .prologue
    .line 280
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/api/client/http/HttpMediaType;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/api/client/http/HttpMediaType;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/api/client/http/HttpMediaType;->getSubType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/api/client/http/HttpMediaType;->getSubType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCharsetParameter()Ljava/nio/charset/Charset;
    .locals 2

    .prologue
    .line 308
    const-string v1, "charset"

    invoke-virtual {p0, v1}, Lcom/google/api/client/http/HttpMediaType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 309
    .local v0, value:Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    goto :goto_0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "name"

    .prologue
    .line 210
    iget-object v0, p0, Lcom/google/api/client/http/HttpMediaType;->parameters:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getParameters()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 237
    iget-object v0, p0, Lcom/google/api/client/http/HttpMediaType;->parameters:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getSubType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/api/client/http/HttpMediaType;->subType:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/api/client/http/HttpMediaType;->type:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 314
    invoke-virtual {p0}, Lcom/google/api/client/http/HttpMediaType;->build()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public removeParameter(Ljava/lang/String;)Lcom/google/api/client/http/HttpMediaType;
    .locals 2
    .parameter "name"

    .prologue
    .line 219
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/api/client/http/HttpMediaType;->cachedBuildResult:Ljava/lang/String;

    .line 220
    iget-object v0, p0, Lcom/google/api/client/http/HttpMediaType;->parameters:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    return-object p0
.end method

.method public setCharsetParameter(Ljava/nio/charset/Charset;)Lcom/google/api/client/http/HttpMediaType;
    .locals 2
    .parameter "charset"

    .prologue
    .line 300
    const-string v1, "charset"

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/google/api/client/http/HttpMediaType;->setParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/client/http/HttpMediaType;

    .line 301
    return-object p0

    .line 300
    :cond_0
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/client/http/HttpMediaType;
    .locals 2
    .parameter "name"
    .parameter "value"

    .prologue
    .line 192
    if-nez p2, :cond_0

    .line 193
    invoke-virtual {p0, p1}, Lcom/google/api/client/http/HttpMediaType;->removeParameter(Ljava/lang/String;)Lcom/google/api/client/http/HttpMediaType;

    .line 201
    :goto_0
    return-object p0

    .line 197
    :cond_0
    sget-object v0, Lcom/google/api/client/http/HttpMediaType;->TOKEN_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    const-string v1, "Name contains reserved characters"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 199
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/api/client/http/HttpMediaType;->cachedBuildResult:Ljava/lang/String;

    .line 200
    iget-object v0, p0, Lcom/google/api/client/http/HttpMediaType;->parameters:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setSubType(Ljava/lang/String;)Lcom/google/api/client/http/HttpMediaType;
    .locals 2
    .parameter "subType"

    .prologue
    .line 137
    sget-object v0, Lcom/google/api/client/http/HttpMediaType;->TYPE_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    const-string v1, "Subtype contains reserved characters"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 139
    iput-object p1, p0, Lcom/google/api/client/http/HttpMediaType;->subType:Ljava/lang/String;

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/api/client/http/HttpMediaType;->cachedBuildResult:Ljava/lang/String;

    .line 141
    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/google/api/client/http/HttpMediaType;
    .locals 2
    .parameter "type"

    .prologue
    .line 117
    sget-object v0, Lcom/google/api/client/http/HttpMediaType;->TYPE_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    const-string v1, "Type contains reserved characters"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 119
    iput-object p1, p0, Lcom/google/api/client/http/HttpMediaType;->type:Ljava/lang/String;

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/api/client/http/HttpMediaType;->cachedBuildResult:Ljava/lang/String;

    .line 121
    return-object p0
.end method
