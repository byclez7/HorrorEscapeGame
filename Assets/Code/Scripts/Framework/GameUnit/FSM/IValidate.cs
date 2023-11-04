using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace HorrorEscapeGame
{
    public interface IValidate
    {
        bool Validate(Func<bool> func);
    }
}
