.class public final Lua9;
.super Ld80;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lua9;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Lj69;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final k:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ll91;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-direct {v0, v1}, Ll91;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lua9;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lj69;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    const-string p1, ""

    .line 7
    .line 8
    :cond_0
    iput-object p1, p0, Lua9;->a:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p2, p0, Lua9;->b:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p3, p0, Lua9;->c:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p4, p0, Lua9;->d:Lj69;

    .line 15
    .line 16
    iput-object p5, p0, Lua9;->e:Ljava/lang/String;

    .line 17
    .line 18
    iput-object p6, p0, Lua9;->f:Ljava/lang/String;

    .line 19
    .line 20
    iput-object p7, p0, Lua9;->k:Ljava/lang/String;

    .line 21
    .line 22
    return-void
.end method

.method public static u(Lj69;)Lua9;
    .locals 9

    .line 1
    const-string v0, "Must specify a non-null webSignInCredential"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lly8;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lua9;

    .line 7
    .line 8
    const/4 v7, 0x0

    .line 9
    const/4 v8, 0x0

    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x0

    .line 12
    const/4 v4, 0x0

    .line 13
    const/4 v6, 0x0

    .line 14
    move-object v5, p0

    .line 15
    invoke-direct/range {v1 .. v8}, Lua9;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lj69;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-object v1
.end method


# virtual methods
.method public final n()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lua9;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final q()Ld80;
    .locals 8

    .line 1
    new-instance v0, Lua9;

    .line 2
    .line 3
    iget-object v6, p0, Lua9;->f:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v7, p0, Lua9;->k:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v1, p0, Lua9;->a:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v2, p0, Lua9;->b:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v3, p0, Lua9;->c:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v4, p0, Lua9;->d:Lj69;

    .line 14
    .line 15
    iget-object v5, p0, Lua9;->e:Ljava/lang/String;

    .line 16
    .line 17
    invoke-direct/range {v0 .. v7}, Lua9;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lj69;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 1
    const/16 v0, 0x4f45

    .line 2
    .line 3
    invoke-static {p1, v0}, Lyc9;->F0(Landroid/os/Parcel;I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    iget-object v2, p0, Lua9;->a:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {p1, v1, v2}, Lyc9;->w0(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x2

    .line 14
    iget-object v2, p0, Lua9;->b:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {p1, v1, v2}, Lyc9;->w0(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/4 v1, 0x3

    .line 20
    iget-object v2, p0, Lua9;->c:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {p1, v1, v2}, Lyc9;->w0(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/4 v1, 0x4

    .line 26
    iget-object v2, p0, Lua9;->d:Lj69;

    .line 27
    .line 28
    invoke-static {p1, v1, v2, p2}, Lyc9;->v0(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    .line 29
    .line 30
    .line 31
    const/4 p2, 0x5

    .line 32
    iget-object v1, p0, Lua9;->e:Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {p1, p2, v1}, Lyc9;->w0(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const/4 p2, 0x6

    .line 38
    iget-object v1, p0, Lua9;->f:Ljava/lang/String;

    .line 39
    .line 40
    invoke-static {p1, p2, v1}, Lyc9;->w0(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const/4 p2, 0x7

    .line 44
    iget-object p0, p0, Lua9;->k:Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {p1, p2, p0}, Lyc9;->w0(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-static {p1, v0}, Lyc9;->G0(Landroid/os/Parcel;I)V

    .line 50
    .line 51
    .line 52
    return-void
.end method
