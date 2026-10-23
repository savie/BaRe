.class public final Lo45;
.super Ljava/lang/Object;

# interfaces
.implements Lz61;


# static fields
.field public static final c:Lo45;

.field public static final d:Lo45;

.field public static final e:Lo45;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lo45;

    .line 2
    .line 3
    const-string v1, "ML-KEM-512"

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    invoke-direct {v0, v1, v2}, Lo45;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lo45;->c:Lo45;

    .line 10
    .line 11
    new-instance v0, Lo45;

    .line 12
    .line 13
    const-string v1, "ML-KEM-768"

    .line 14
    .line 15
    const/4 v2, 0x3

    .line 16
    invoke-direct {v0, v1, v2}, Lo45;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lo45;->d:Lo45;

    .line 20
    .line 21
    new-instance v0, Lo45;

    .line 22
    .line 23
    const-string v1, "ML-KEM-1024"

    .line 24
    .line 25
    const/4 v2, 0x4

    .line 26
    invoke-direct {v0, v1, v2}, Lo45;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lo45;->e:Lo45;

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
    iput-object p1, p0, Lo45;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput p2, p0, Lo45;->b:I

    .line 7
    .line 8
    return-void
.end method
