.class public final Lgn6;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final d:Lgn6;

.field public static final e:Lgn6;


# instance fields
.field public a:Ljava/util/List;

.field public b:Ljava/util/List;

.field public c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lgn6;

    .line 2
    .line 3
    invoke-direct {v0}, Lgn6;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lgn6;->d:Lgn6;

    .line 7
    .line 8
    new-instance v0, Lgn6;

    .line 9
    .line 10
    invoke-direct {v0}, Lgn6;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lgn6;->e:Lgn6;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lgn6;->c:I

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lgn6;->a:Ljava/util/List;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 6
    .line 7
    :cond_0
    return-object p0
.end method
