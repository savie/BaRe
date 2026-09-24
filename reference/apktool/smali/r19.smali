.class public final Lr19;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:[Ly53;

.field public final b:Z

.field public final c:I

.field public final synthetic d:Lby7;


# direct methods
.method public constructor <init>(Lby7;[Ly53;ZI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lr19;->d:Lby7;

    .line 5
    .line 6
    iput-object p2, p0, Lr19;->a:[Ly53;

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    if-eqz p3, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    :cond_0
    iput-boolean p1, p0, Lr19;->b:Z

    .line 15
    .line 16
    iput p4, p0, Lr19;->c:I

    .line 17
    .line 18
    return-void
.end method

.method public static a()Lby7;
    .locals 2

    .line 1
    new-instance v0, Lby7;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    iput-boolean v1, v0, Lby7;->b:Z

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput v1, v0, Lby7;->d:I

    .line 11
    .line 12
    return-object v0
.end method
