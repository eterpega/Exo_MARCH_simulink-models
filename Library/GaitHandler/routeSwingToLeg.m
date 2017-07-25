function [ leftHip, leftKnee, rightHip, rightKnee ] = routeSwingToLeg(stepLeg, swingHip, swingKnee, standHip, standKnee )
%ROUTESWINGTOLEG Puts the target joint angles into the desired leg
%according to stepLeg

switch(stepLeg)
    case Leg.LEFT
        % then the left leg is the swingLeg
        leftHip = swingHip;
        leftKnee = swingKnee;
        rightHip = standHip;
        rightKnee = standKnee;
    case Leg.RIGHT
        % then the right leg is the swingLeg
        rightHip = swingHip;
        rightKnee = swingKnee;
        leftHip = standHip;
        leftKnee = standKnee;
    otherwise % Leg.NONE
        % shouldn't happen, output all zeros
        leftHip = 0;
        leftKnee = 0;
        rightHip = 0;
        rightKnee = 0;
end
end