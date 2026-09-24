.class public final Lg23;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public a:I

.field public b:J

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/util/Calendar;

.field public final f:[[Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x3

    .line 5
    iput v0, p0, Lg23;->a:I

    .line 6
    .line 7
    const-wide/16 v1, -0x1

    .line 8
    .line 9
    iput-wide v1, p0, Lg23;->b:J

    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    new-array v1, v1, [I

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    aput v0, v1, v2

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    aput v0, v1, v2

    .line 19
    .line 20
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 21
    .line 22
    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, [[Z

    .line 27
    .line 28
    iput-object v0, p0, Lg23;->f:[[Z

    .line 29
    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 32
    iput v0, p0, Lg23;->a:I

    const-wide/16 v0, -0x1

    .line 33
    iput-wide v0, p0, Lg23;->b:J

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lg23;->f:[[Z

    .line 35
    iput-object p1, p0, Lg23;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(IIZ)V
    .locals 0

    .line 1
    iget-object p0, p0, Lg23;->f:[[Z

    .line 2
    .line 3
    aget-object p0, p0, p1

    .line 4
    .line 5
    aput-boolean p3, p0, p2

    .line 6
    .line 7
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lg23;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
