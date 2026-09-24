.class public abstract Lcom/google/gson/internal/sql/a;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Z

.field public static final b:Lik7;

.field public static final c:Ljk7;

.field public static final d:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    :try_start_0
    const-string v2, "java.sql.Date"

    .line 4
    .line 5
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    move v2, v1

    .line 9
    goto :goto_0

    .line 10
    :catch_0
    move v2, v0

    .line 11
    :goto_0
    sput-boolean v2, Lcom/google/gson/internal/sql/a;->a:Z

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    new-instance v2, Lik7;

    .line 16
    .line 17
    const-class v3, Ljava/sql/Date;

    .line 18
    .line 19
    invoke-direct {v2, v3}, Lcom/google/gson/internal/bind/a;-><init>(Ljava/lang/Class;)V

    .line 20
    .line 21
    .line 22
    sput-object v2, Lcom/google/gson/internal/sql/a;->b:Lik7;

    .line 23
    .line 24
    new-instance v2, Ljk7;

    .line 25
    .line 26
    const-class v3, Ljava/sql/Timestamp;

    .line 27
    .line 28
    invoke-direct {v2, v3}, Lcom/google/gson/internal/bind/a;-><init>(Ljava/lang/Class;)V

    .line 29
    .line 30
    .line 31
    sput-object v2, Lcom/google/gson/internal/sql/a;->c:Ljk7;

    .line 32
    .line 33
    const/4 v2, 0x3

    .line 34
    new-array v2, v2, [Lxb8;

    .line 35
    .line 36
    sget-object v3, Lcom/google/gson/internal/sql/SqlTimeTypeAdapter;->b:Lxb8;

    .line 37
    .line 38
    aput-object v3, v2, v0

    .line 39
    .line 40
    sget-object v0, Lcom/google/gson/internal/sql/SqlDateTypeAdapter;->b:Lxb8;

    .line 41
    .line 42
    aput-object v0, v2, v1

    .line 43
    .line 44
    sget-object v0, Lcom/google/gson/internal/sql/SqlTimestampTypeAdapter;->b:Lxb8;

    .line 45
    .line 46
    const/4 v1, 0x2

    .line 47
    aput-object v0, v2, v1

    .line 48
    .line 49
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    sput-object v0, Lcom/google/gson/internal/sql/a;->d:Ljava/util/List;

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_0
    const/4 v0, 0x0

    .line 61
    sput-object v0, Lcom/google/gson/internal/sql/a;->b:Lik7;

    .line 62
    .line 63
    sput-object v0, Lcom/google/gson/internal/sql/a;->c:Ljk7;

    .line 64
    .line 65
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 66
    .line 67
    sput-object v0, Lcom/google/gson/internal/sql/a;->d:Ljava/util/List;

    .line 68
    .line 69
    :goto_1
    return-void
.end method
