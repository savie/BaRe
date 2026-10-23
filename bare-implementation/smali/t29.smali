.class public final Lt29;
.super Lb19;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic b:Lcom/google/android/gms/tasks/TaskCompletionSource;


# direct methods
.method public constructor <init>(Lu29;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lt29;->b:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 2
    .line 3
    const-string p1, "com.google.android.gms.auth.api.identity.internal.IGetSignInIntentCallback"

    .line 4
    .line 5
    const/4 p2, 0x1

    .line 6
    invoke-direct {p0, p1, p2}, Lb19;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final n(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    .line 1
    const/4 p3, 0x1

    .line 2
    if-ne p1, p3, :cond_0

    .line 3
    .line 4
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 5
    .line 6
    invoke-static {p2, p1}, Lz29;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    .line 11
    .line 12
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 13
    .line 14
    invoke-static {p2, v0}, Lz29;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Landroid/app/PendingIntent;

    .line 19
    .line 20
    invoke-static {p2}, Lz29;->c(Landroid/os/Parcel;)V

    .line 21
    .line 22
    .line 23
    iget-object p0, p0, Lt29;->b:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 24
    .line 25
    invoke-static {p1, v0, p0}, Lly8;->O(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 26
    .line 27
    .line 28
    return p3

    .line 29
    :cond_0
    const/4 p0, 0x0

    .line 30
    return p0
.end method
