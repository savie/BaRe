.class public final Lol2;
.super Ljava/lang/Object;


# static fields
.field public static final c:Lol2;

.field public static final d:Lol2;

.field public static final e:Lol2;


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lol2;

    .line 2
    .line 3
    const-string v1, "dilithium2"

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    invoke-direct {v0, v1, v2}, Lol2;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lol2;->c:Lol2;

    .line 10
    .line 11
    new-instance v0, Lol2;

    .line 12
    .line 13
    const-string v1, "dilithium3"

    .line 14
    .line 15
    const/4 v2, 0x3

    .line 16
    invoke-direct {v0, v1, v2}, Lol2;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lol2;->d:Lol2;

    .line 20
    .line 21
    new-instance v0, Lol2;

    .line 22
    .line 23
    const-string v1, "dilithium5"

    .line 24
    .line 25
    const/4 v2, 0x5

    .line 26
    invoke-direct {v0, v1, v2}, Lol2;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lol2;->e:Lol2;

    .line 30
    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lol2;->b:Ljava/lang/String;

    .line 5
    .line 6
    iput p2, p0, Lol2;->a:I

    .line 7
    .line 8
    return-void
.end method
