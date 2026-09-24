.class public final Lk33;
.super Ljava/lang/Object;

# interfaces
.implements Lz61;


# static fields
.field public static final c:Lk33;

.field public static final d:Lk33;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lk33;

    .line 2
    .line 3
    const-string v1, "falcon-512"

    .line 4
    .line 5
    const/16 v2, 0x9

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lk33;-><init>(Ljava/lang/String;I)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lk33;->c:Lk33;

    .line 11
    .line 12
    new-instance v0, Lk33;

    .line 13
    .line 14
    const-string v1, "falcon-1024"

    .line 15
    .line 16
    const/16 v2, 0xa

    .line 17
    .line 18
    invoke-direct {v0, v1, v2}, Lk33;-><init>(Ljava/lang/String;I)V

    .line 19
    .line 20
    .line 21
    sput-object v0, Lk33;->d:Lk33;

    .line 22
    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    if-lt p2, v0, :cond_0

    .line 6
    .line 7
    const/16 v0, 0xa

    .line 8
    .line 9
    if-gt p2, v0, :cond_0

    .line 10
    .line 11
    iput-object p1, p0, Lk33;->a:Ljava/lang/String;

    .line 12
    .line 13
    iput p2, p0, Lk33;->b:I

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    const-string p0, "Log N degree should be between 1 and 10"

    .line 17
    .line 18
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const/4 p0, 0x0

    .line 22
    throw p0
.end method
