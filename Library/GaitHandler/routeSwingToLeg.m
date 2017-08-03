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
    case Leg.BOTH
        rightHip = standHip;
        rightKnee = standKnee;
        leftHip = standHip;
        leftKnee = standKnee;        
    otherwise % Leg.BOTH
        %shouldn't happen, output all zeros 
        leftHip.angle = 0;
        leftHip.velocity = 0;
        leftHip.torque = 0;
        
        leftKnee.angle = 0;
        leftKnee.velocity = 0;
        leftKnee.torque = 0;
        
        rightHip.angle = 0;
        rightHip.velocity = 0;
        rightHip.torque = 0;
        
        rightKnee.angle = 0;
        rightKnee.velocity = 0;
        rightKnee.torque = 0;
end
end